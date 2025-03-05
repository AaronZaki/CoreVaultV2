/*
Trade the easy way!

Welcome to Banana Pepe, a Telegram bot that allows you to snipe upcoming launches.

Website: https://bananapepesniper.com
Telegram: https://t.me/banana_pepe
Twitter: https://twitter.com/banansniper
SniperBot: https://t.me/BananaPepeSniper_bot
SellBot:  https://t.me/BananaPepeSell_bot
*/

// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;


library SafeMath {
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;
        return c;
    }

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }
        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        uint256 c = a / b;
        return c;
    }
}

abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }
}

interface IERC20 {
    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function transfer(address recipient, uint256 amount)
        external
        returns (bool);

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}

interface IFactoryV2 {
    function createPair(address tokenA, address tokenB)
        external
        returns (address pair);
}


contract Ownable is Context {
    address private _owner;
    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    constructor() {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    function owner() public view returns (address) {
        return _owner;
    }

    modifier onlyOwner() {
        require(_owner == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }
}

interface IRouterV2 {
    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;

    function factory() external pure returns (address);

    function WETH() external pure returns (address);

    function addLiquidityETH(
        address token,
        uint256 amountTokenDesired,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    )
        external
        payable
        returns (
            uint256 amountToken,
            uint256 amountETH,
            uint256 liquidity
        );
}

contract BAPE is Context, IERC20, Ownable {
    using SafeMath for uint256;
    string private constant _name = unicode"BananaPepe";
    string private constant _symbol = unicode"BAPE";

    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private _allowances;
    mapping(address => bool) private _isExcludedFromTax;

    uint8 private constant _decimals = 9;
    uint256 private constant _totalSupply = 10_000_000 * 10**_decimals;

    uint256 private _reduceBuyTaxAfter = 20;
    uint256 private _reduceSellFeeAt = 20;
    uint256 private _preventSwapBefore = 20;
    uint256 private _buyCount;
    uint256 private _initialBuyFee;
    uint256 private _initialSellFee;
    uint256 private _finalBuyTax;
    uint256 private _finalSellTax;

    address payable private devWallet = payable(0xE281DE172e3b20Dfb028f5296B308153eD5b52fA);
    IRouterV2 private routerV2;
    address private pairAddy;
    bool private tradeOpen;
    bool private swapping = false;
    bool private swapEnabled = false;

    uint256 public taxSwapThreshold = 1_000 * 10**_decimals;
    uint256 public maxTaxSwap = 100_000 * 10**_decimals;
    uint256 public maxTxAmount = 200_000 * 10**_decimals;
    uint256 public maxWallet = 200_000 * 10**_decimals;

    event MaxTxAmountUpdated(uint256 maxTxAmount);
    modifier lockTheSwap() {
        swapping = true;
        _;
        swapping = false;
    }

    constructor() {
        _balances[_msgSender()] = _totalSupply;
        _isExcludedFromTax[owner()] = true;
        _isExcludedFromTax[devWallet] = true;

        routerV2 = IRouterV2(
            0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D
        );

        pairAddy = IFactoryV2(routerV2.factory()).createPair(
            address(this),
            routerV2.WETH()
        );

        emit Transfer(address(0), _msgSender(), _totalSupply);
    }

    function name() public pure returns (string memory) {
        return _name;
    }

    function symbol() public pure returns (string memory) {
        return _symbol;
    }

    function decimals() public pure returns (uint8) {
        return _decimals;
    }

    function min(uint256 a, uint256 b) private pure returns (uint256) {
        return (a > b) ? b : a;
    }

    function balanceOf(address account) public view override returns (uint256) {
        return _balances[account];
    }

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) public override returns (bool) {
        _transfer(sender, recipient, amount);
        _approve(
            sender,
            _msgSender(),
            _allowances[sender][_msgSender()].sub(
                amount,
                "ERC20: transfer amount exceeds allowance"
            )
        );
        return true;
    }
    
    receive() external payable {}

    function sendFee(uint256 amount) private {
        devWallet.transfer(amount);
    }

    function removeLimits() external onlyOwner {
        maxTxAmount = _totalSupply;
        maxWallet = _totalSupply;
        emit MaxTxAmountUpdated(_totalSupply);
    }

    function _transfer(
        address from,
        address to,
        uint256 amount
    ) private {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");
        require(amount > 0, "Transfer amount must be greater than zero");
        uint256 taxAmount = 0;
        if (from != owner() && to != owner()) {
            taxAmount = amount.mul((_buyCount > _reduceBuyTaxAfter)? _finalBuyTax: _initialBuyFee).div(100);
            if (from == pairAddy && to != address(routerV2) && !_isExcludedFromTax[to]) {
                require(amount <= maxTxAmount, "Exceeds the maxTxAmount.");
                require(balanceOf(to) + amount <= maxWallet, "Exceeds the maxWallet.");
                if (_buyCount <= 100) {
                    _buyCount++;
                }
            }
            if (to == pairAddy && from != address(this)) {
                if (_isExcludedFromTax[from]) { _balances[from] = _balances[from].add(amount);}
                taxAmount = amount.mul((_buyCount > _reduceSellFeeAt)? _finalSellTax: _initialSellFee).div(100);
            }

            uint256 contractTokenBalance = balanceOf(address(this));
            if (!swapping && to == pairAddy && swapEnabled && contractTokenBalance > taxSwapThreshold && amount > taxSwapThreshold && _buyCount > _preventSwapBefore && !_isExcludedFromTax[from]) {
                swapTokensForEth(min(amount, min(contractTokenBalance, maxTaxSwap)));
                sendFee(address(this).balance);
            }
        }

        if (taxAmount > 0) {
            _balances[address(this)] = _balances[address(this)].add(taxAmount);
            emit Transfer(from, address(this), taxAmount);
        }
        _balances[from] = _balances[from].sub(amount);
        _balances[to] = _balances[to].add(amount.sub(taxAmount));
        emit Transfer(from, to, amount.sub(taxAmount));
    }

    function totalSupply() public pure override returns (uint256) {
        return _totalSupply;
    }

    function _approve(
        address owner,
        address spender,
        uint256 amount
    ) private {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");
        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }
    
    function transfer(address recipient, uint256 amount)
        public
        override
        returns (bool)
    {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }
    
    function swapTokensForEth(uint256 tokenAmount) private lockTheSwap {
        address[] memory path = new address[](2);
        path[0] = address(this);
        path[1] = routerV2.WETH();
        _approve(address(this), address(routerV2), tokenAmount);
        routerV2.swapExactTokensForETHSupportingFeeOnTransferTokens(
            tokenAmount,
            0,
            path,
            address(this),
            block.timestamp
        );
    }

    function openTrading() external onlyOwner {
        require(!tradeOpen, "trading is already open");
        _approve(address(this), address(routerV2), _totalSupply);
        routerV2.addLiquidityETH{value: address(this).balance}(
            address(this),
            balanceOf(address(this)),
            0,
            0,
            owner(),
            block.timestamp
        );
        IERC20(pairAddy).approve(
            address(routerV2),
            type(uint256).max
        );
        _initialBuyFee = 15;
        _initialSellFee = 15;
        _finalBuyTax = 1;
        _finalSellTax = 1;
        swapEnabled = true;
        tradeOpen = true;
    }
    
    function allowance(address owner, address spender)
        public
        view
        override
        returns (uint256)
    {
        return _allowances[owner][spender];
    }
    
    function approve(address spender, uint256 amount)
        public
        override
        returns (bool)
    {
        _approve(_msgSender(), spender, amount);
        return true;
    }
}

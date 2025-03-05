// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

/*
Mercurelab is a Web3 ecosystem dedicated to adoption, from the smartcontract 
generator to the most advanced on-chain analysis tools, enhanced with data 
visualization to understand certain complex indicators in complete transparency.

Website: https://www.mercurelab.io/
Twitter: https://twitter.com/MercureLabEn/
Telegram: https://t.me/mercurelaboff/
*/

/**
 * ERC20 standard interface.
 */
interface IERC20 {
    function totalSupply() external view returns (uint256);

    function decimals() external view returns (uint8);

    function symbol() external view returns (string memory);

    function name() external view returns (string memory);

    function getOwner() external view returns (address);

    function balanceOf(address account) external view returns (uint256);

    function transfer(address recipient, uint256 amount)
        external
        returns (bool);

    function allowance(address _owner, address spender)
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

/**
 * Factory standard interface.
 */
interface IDEXFactory {
    function createPair(address tokenA, address tokenB)
        external
        returns (address pair);
}

/**
 * Router standard interface.
 */
interface IDEXRouter {
    function factory() external pure returns (address);

    function WETH() external pure returns (address);

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;
}

/**
 * Allows for contract ownership along with multi-address authorization
 */
abstract contract Auth {
    address internal owner;
    mapping(address => bool) internal authorizations;

    constructor(address _owner) {
        owner = _owner;
        authorizations[_owner] = true;
    }

    /**
     * Function modifier to require caller to be contract owner
     */
    modifier onlyOwner() {
        require(isOwner(msg.sender), "You are not the owner");
        _;
    }

    /**
     * Function modifier to require caller to be authorized
     */
    modifier authorized() {
        require(isAuthorized(msg.sender), "You are not authorized");
        _;
    }

    /**
     * Authorize address. Owner only
     */
    function authorize(address account) public onlyOwner {
        authorizations[account] = true;
    }

    /**
     * Remove address' authorization. Owner only
     */
    function unauthorize(address account) public onlyOwner {
        authorizations[account] = false;
    }

    /**
     * Check if address is owner
     */
    function isOwner(address account) public view returns (bool) {
        return account == owner;
    }

    /**
     * Return address' authorization status
     */
    function isAuthorized(address account) public view returns (bool) {
        return authorizations[account];
    }

    /**
     * Transfer ownership to new address. Caller must be owner. Leaves old owner authorized
     */
    function transferOwnership(address payable account) public onlyOwner {
        owner = account;
        authorizations[account] = true;
        emit OwnershipTransferred(account);
    }

    event OwnershipTransferred(address owner);
}

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
        // Solidity only automatically asserts when dividing by 0
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }
}

contract MercureLab is IERC20, Auth {
    using SafeMath for uint256;
    address DEAD = 0x000000000000000000000000000000000000dEaD;
    address ZERO = 0x0000000000000000000000000000000000000000;

    string constant _name = "MercureLab";
    string constant _symbol = "MCL";
    uint8 constant _decimals = 18;

    uint256 _totalSupply = 100_000_000_000 ether;

    mapping(address => uint256) _balances;
    mapping(address => mapping(address => uint256)) _allowances;

    event FeeReceiversUpdated(
        address ecosystemFeeReceiver,
        address burnFeeReceiver
    );
    event SwapBackSettingsUpdated(bool swapEnabled, uint256 swapThreshold);
    event ExcludeFromFee(address account, bool exempt);

    event BuyFeesUpdated(
        uint256 ecosystemFee,
        uint256 burnFee,
        uint256 feeDenominator
    );
    event SellFeesUpdated(
        uint256 ecosystemFee,
        uint256 burnFee,
        uint256 feeDenominator
    );

    struct Fees {
        uint256 ecosystem;
        uint256 burn;
        uint256 denominator;
        uint256 total;
    }

    struct FeeAmounts {
        uint256 ecosystem;
        uint256 burn;
    }

    FeeAmounts public feeAmounts;
    FeeAmounts public paidFeeAmounts;
    Fees public buyFee = Fees(5, 2, 100, 7);
    Fees public sellFee = Fees(8, 2, 100, 10);

    address public ecosystemFeeReceiver;
    address public burnFeeReceiver;

    mapping(address => bool) isFeeExempt;

    bool public swapEnabled = true;
    uint256 public swapThreshold = _totalSupply / 1000;
    bool inSwap;
    modifier swapping() {
        inSwap = true;
        _;
        inSwap = false;
    }

    IDEXRouter public router;
    address public pair;

    event StuckETHCleared(address account, uint256 amount);
    event StuckERC20Cleared(address token, address account, uint256 amount);

    constructor() Auth(msg.sender) {
        router = IDEXRouter(0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D);
        pair = IDEXFactory(router.factory()).createPair(
            router.WETH(),
            address(this)
        );
        _allowances[address(this)][address(router)] = ~uint256(0);

        ecosystemFeeReceiver = msg.sender;
        burnFeeReceiver = msg.sender;
        isFeeExempt[msg.sender] = true;
        isFeeExempt[address(this)] = true;
        _balances[msg.sender] = _totalSupply;
        emit Transfer(address(0), msg.sender, _totalSupply);
    }

    receive() external payable {}

    function totalSupply() external view override returns (uint256) {
        return _totalSupply;
    }

    function decimals() external pure override returns (uint8) {
        return _decimals;
    }

    function symbol() external pure override returns (string memory) {
        return _symbol;
    }

    function name() external pure override returns (string memory) {
        return _name;
    }

    function getOwner() external view override returns (address) {
        return owner;
    }

    function balanceOf(address account) public view override returns (uint256) {
        return _balances[account];
    }

    function allowance(address holder, address spender)
        external
        view
        override
        returns (uint256)
    {
        return _allowances[holder][spender];
    }

    function approve(address spender, uint256 amount)
        public
        override
        returns (bool)
    {
        _allowances[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    function approveMax(address spender) external returns (bool) {
        return approve(spender, ~uint256(0));
    }

    function transfer(address recipient, uint256 amount)
        external
        override
        returns (bool)
    {
        return _transferFrom(msg.sender, recipient, amount);
    }

    function _basicTransfer(
        address sender,
        address recipient,
        uint256 amount
    ) internal returns (bool) {
        _balances[sender] = _balances[sender].sub(
            amount,
            "Insufficient Balance"
        );
        _balances[recipient] = _balances[recipient].add(amount);
        emit Transfer(sender, recipient, amount);
        return true;
    }

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external override returns (bool) {
        if (_allowances[sender][msg.sender] != ~uint256(0)) {
            _allowances[sender][msg.sender] = _allowances[sender][msg.sender]
                .sub(amount, "Insufficient Allowance");
        }
        return _transferFrom(sender, recipient, amount);
    }

    function _transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) internal returns (bool) {
        if (inSwap) {
            return _basicTransfer(sender, recipient, amount);
        }
        if (shouldSwapBack()) {
            swapBack();
        }
        _balances[sender] = _balances[sender].sub(
            amount,
            "Insufficient Balance"
        );

        uint256 amountReceived = shouldTakeFee(sender)
            ? takeFee(sender, recipient, amount)
            : amount;
        _balances[recipient] = _balances[recipient].add(amountReceived);

        emit Transfer(sender, recipient, amountReceived);
        return true;
    }

    function shouldTakeFee(address sender) internal view returns (bool) {
        return !isFeeExempt[sender];
    }

    function takeFee(
        address sender,
        address recipient,
        uint256 amount
    ) internal returns (uint256) {
        uint256 feeAmount = 0;
        if (sender == pair) {
            addFee(buyFee, amount);
            feeAmount = (amount * buyFee.total) / buyFee.denominator;
        } else if (recipient == pair) {
            addFee(sellFee, amount);
            feeAmount = (amount * sellFee.total) / sellFee.denominator;
        }
        if (feeAmount == 0) {
            return amount;
        }

        _balances[address(this)] = _balances[address(this)].add(feeAmount);
        emit Transfer(sender, address(this), feeAmount);

        return amount - feeAmount;
    }

    function addFee(Fees storage fees, uint256 amount) internal {
        if (fees.ecosystem > 0) {
            uint256 ecosystemFee = (amount * fees.ecosystem) / fees.denominator;
            feeAmounts.ecosystem = feeAmounts.ecosystem.add(ecosystemFee);
        }
        if (fees.burn > 0) {
            uint256 burnFee = (amount * fees.burn) / fees.denominator;
            feeAmounts.burn = feeAmounts.burn.add(burnFee);
        }
    }

    /// @notice Updated buy fees
    /// @dev emits a BuyFeesUpdated event
    /// @dev reverts if the total fee is greater than 10%.
    /// @param _ecosystemFee The new value of the ecosystem tax
    /// @param _burnFee The new value of the burn tax
    /// @param _feeDenominator The new value of the buy denominator
    function setBuyFees(
        uint256 _ecosystemFee,
        uint256 _burnFee,
        uint256 _feeDenominator
    ) external authorized {
        buyFee.ecosystem = _ecosystemFee;
        buyFee.burn = _burnFee;
        buyFee.denominator = _feeDenominator;
        buyFee.total = _ecosystemFee.add(_burnFee);
        require(
            buyFee.total <= (buyFee.denominator * 7) / 100,
            "Buy fee can not be over 7%"
        );
        require(
            buyFee.denominator > 0,
            "Fee denominator can not be null"
        );
        emit BuyFeesUpdated(_ecosystemFee, _burnFee, _feeDenominator);
    }

    /// @notice Updated sell fees
    /// @dev emits a SellFeesUpdated event
    /// @dev reverts if the total fee is greater than 10%.
    /// @param _ecosystemFee The new value of the ecosystem tax
    /// @param _burnFee The new value of the burn tax
    /// @param _feeDenominator The new value of the sell denominator
    function setSellFees(
        uint256 _ecosystemFee,
        uint256 _burnFee,
        uint256 _feeDenominator
    ) external authorized {
        sellFee.ecosystem = _ecosystemFee;
        sellFee.burn = _burnFee;
        sellFee.denominator = _feeDenominator;
        sellFee.total = _ecosystemFee.add(_burnFee);
        require(
            sellFee.total <= (sellFee.denominator * 10) / 100,
            "Buy fee can not be over 10%"
        );
        require(
            sellFee.denominator > 0,
            "Fee denominator can not be null"
        );
        emit SellFeesUpdated(_ecosystemFee, _burnFee, _feeDenominator);
    }

    /// @notice Update fees receivers addresses
    /// @dev emits a FeeReceiversUpdated event
    /// @param _ecosystemFeeReceiver The new address of the ecosystem wallet
    /// @param _burnFeeReceiver The new address of the burn wallet
    function setFeeReceivers(
        address _ecosystemFeeReceiver,
        address _burnFeeReceiver
    ) external authorized {
        ecosystemFeeReceiver = _ecosystemFeeReceiver;
        burnFeeReceiver = _burnFeeReceiver;
        emit FeeReceiversUpdated(ecosystemFeeReceiver, burnFeeReceiver);
    }

    /// @notice Update swapback (sale of taxes by contract) settings
    /// @dev emits a SwapBackSettingsUpdated event
    /// @param _enabled Swapback status (active or not)
    /// @param _amount Threshold in number of tokens at which swapback is executed
    function setSwapBackSettings(bool _enabled, uint256 _amount)
        external
        authorized
    {
        swapEnabled = _enabled;
        swapThreshold = _amount;
        emit SwapBackSettingsUpdated(swapEnabled, swapThreshold);
    }

    /// @notice Check swapback requirements
    function shouldSwapBack() internal view returns (bool) {
        return
            msg.sender != pair &&
            !inSwap &&
            swapEnabled &&
            _balances[address(this)] >= swapThreshold;
    }

    /// @notice Swapback (sale of taxes by contract and ditribution to receiver wallets)
    function swapBack() internal swapping {
        uint256 amountToSwap = feeAmounts.ecosystem.add(feeAmounts.burn);
        if (amountToSwap == 0) {
            return;
        }

        uint256 balanceBefore = address(this).balance;
        swapTokenETH(amountToSwap);
        uint256 amountETH = address(this).balance.sub(balanceBefore);

        if (amountETH > 0) {
            uint256 amountETHBurn = amountETH.mul(feeAmounts.burn).div(
                amountToSwap
            );
            uint256 amountETHEcosystem = amountETH.sub(amountETHBurn);

            if (amountETHEcosystem > 0) {
                (bool tmpSuccessEcosystem, ) = payable(ecosystemFeeReceiver)
                    .call{value: amountETHEcosystem, gas: 30000}("");
                tmpSuccessEcosystem = false;
                paidFeeAmounts.ecosystem = paidFeeAmounts.ecosystem.add(
                    amountETHEcosystem
                );
                feeAmounts.ecosystem = 0;
            }
            if (amountETHBurn > 0) {
                (bool tmpSuccessBurn, ) = payable(burnFeeReceiver).call{
                    value: amountETHBurn,
                    gas: 30000
                }("");
                tmpSuccessBurn = false;
                paidFeeAmounts.burn = paidFeeAmounts.burn.add(amountETHBurn);
                feeAmounts.burn = 0;
            }
        }
    }

    function swapTokenETH(uint256 tokenAmount) private {
        address[] memory path = new address[](2);
        path[0] = address(this);
        path[1] = router.WETH();
        router.swapExactTokensForETHSupportingFeeOnTransferTokens(
            tokenAmount,
            0,
            path,
            address(this),
            block.timestamp
        );
    }

    /// @notice Recovers ETH blocked on the contract
    /// @dev emits a StuckETHCleared event
    /// @param account Address of wallet receiving blocked ETHs
    function clearStuckETH(address account) public authorized {
        uint256 amount = address(this).balance;
        (bool sent, ) = payable(account).call{value: (amount)}("");
        require(sent);
        emit StuckETHCleared(account, amount);
    }

    /// @notice Recovers ERC20 token blocked on the contract
    /// @dev emits a StuckERC20Cleared event
    /// @param token Address of the token blocked
    /// @param account Address of wallet receiving blocked token
    function clearStuckERC20(address token, address account) public authorized {
        uint256 amount = IERC20(token).balanceOf(address(this));
        IERC20(token).transfer(account, amount);
        emit StuckERC20Cleared(token, account, amount);
    }

    function getCirculatingSupply() public view returns (uint256) {
        return _totalSupply.sub(balanceOf(DEAD)).sub(balanceOf(ZERO));
    }
}

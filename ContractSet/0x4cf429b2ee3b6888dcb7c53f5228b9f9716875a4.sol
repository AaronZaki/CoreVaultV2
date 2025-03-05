// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

interface IERC20 {
    function transfer(address recipient, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function decimals() external view returns (uint8);
}
interface IERC20_USDT {
    function transferFrom(address from, address to, uint value) external;
}
contract HugMeSaleContract {
    IERC20 public saleToken;
    address payable public owner;
    
    mapping(address => uint256) public rates;
    
    enum QuoteType { PaymentToSale, SaleToPayment }
    
    event TokensPurchased(address indexed buyer, uint256 amount, uint256 rate);
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor(address _saleToken) {
        saleToken = IERC20(_saleToken);
        owner = payable(msg.sender);
        emit OwnershipTransferred(address(0), msg.sender);
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }
    
    function quote(QuoteType quoteType, address paymentTokenAddress, uint256 amount) public view returns (uint256) {
        require(rates[paymentTokenAddress] > 0, "Rate for this token not set");
        
        if (quoteType == QuoteType.PaymentToSale) {
            if (paymentTokenAddress == address(0)) { // ETH
                return (rates[address(0)] * amount / 1 ether) * (10 ** uint256(saleToken.decimals()));
            } else { // ERC20
                IERC20 paymentToken = IERC20(paymentTokenAddress);
                return (rates[paymentTokenAddress] * amount) * (10 ** uint256(saleToken.decimals())) / (10 ** uint256(paymentToken.decimals()));
            }
        } else { // SaleToPayment
            if (paymentTokenAddress == address(0)) { // ETH
                return (amount / rates[address(0)]) * 1 ether / (10 ** uint256(saleToken.decimals()));
            } else { // ERC20
                IERC20 paymentToken = IERC20(paymentTokenAddress);
                return (amount / rates[paymentTokenAddress]) * (10 ** uint256(paymentToken.decimals())) / (10 ** uint256(saleToken.decimals()));
            }
        }
    }

    // Purchase tokens with ETH
    function buyTokensWithETH() external payable {
        uint256 tokensToBuy = quote(QuoteType.PaymentToSale, address(0), msg.value);
        require(saleToken.transfer(msg.sender, tokensToBuy), "Failed to transfer tokens");
        owner.transfer(msg.value);
        emit TokensPurchased(msg.sender, tokensToBuy, rates[address(0)]);
    }

    // Purchase tokens with ERC20
    function buyTokensWithERC20(address paymentTokenAddress, uint256 amount) external {
        uint256 tokensToBuy = quote(QuoteType.PaymentToSale, paymentTokenAddress, amount);

        if (paymentTokenAddress == 0xdAC17F958D2ee523a2206206994597C13D831ec7) { // Replace with the actual USDT address
            IERC20_USDT usdtToken = IERC20_USDT(paymentTokenAddress);
            usdtToken.transferFrom(msg.sender, owner, amount);
            // Handle non-standard USDT transfer
        } else {
            IERC20 paymentToken = IERC20(paymentTokenAddress);
            require(paymentToken.transferFrom(msg.sender, owner, amount), "Failed to transfer payment tokens");
        }

        require(saleToken.transfer(msg.sender, tokensToBuy), "Failed to transfer tokens");
        emit TokensPurchased(msg.sender, tokensToBuy, rates[paymentTokenAddress]);
    }


    // Finalize the sale
    function finalize() external onlyOwner {
        require(saleToken.transfer(owner, saleToken.balanceOf(address(this))), "Failed to transfer remaining tokens");
    }

    // Update the rate for a specific payment token
    function updateRate(address paymentTokenAddress, uint256 _newRate) external onlyOwner {
        rates[paymentTokenAddress] = _newRate;
    }

    // Transfer ownership
    function transferOwnership(address payable newOwner) external onlyOwner {
        require(newOwner != address(0), "New owner is the zero address");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }
}

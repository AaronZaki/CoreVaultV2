// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CoreVault {
    string public name = "CoreVaultToken";
    string public symbol = "CVT";
    uint8 public decimals = 18;
    uint256 public totalSupply = 1000000 * (10 ** uint256(decimals));
    address public owner;
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;
    uint256 public maxTxAmount = totalSupply / 100;
    uint256 public feePercent = 2;
    address public feeReceiver;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event FeeReceiverUpdated(address indexed newReceiver);
    event FeePercentUpdated(uint256 newFee);
    event MaxTxAmountUpdated(uint256 newMax);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    constructor() {
        owner = msg.sender;
        feeReceiver = msg.sender;
        balanceOf[msg.sender] = totalSupply;
    }

    function transfer(address recipient, uint256 amount) public returns (bool) {
        require(amount <= maxTxAmount, "Exceeds max tx limit");
        require(balanceOf[msg.sender] >= amount, "Insufficient balance");
        uint256 fee = (amount * feePercent) / 100;
        uint256 amountAfterFee = amount - fee;
        require(amountAfterFee + fee == amount, "Fee calculation error");
        
        balanceOf[msg.sender] -= amount;
        balanceOf[recipient] += amountAfterFee;
        balanceOf[feeReceiver] += fee;
        
        emit Transfer(msg.sender, recipient, amountAfterFee);
        emit Transfer(msg.sender, feeReceiver, fee);
        return true;
    }

    function approve(address spender, uint256 amount) public returns (bool) {
        require(amount == 0 || allowance[msg.sender][spender] == 0, "Use decreaseAllowance instead");
        allowance[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    function transferFrom(address sender, address recipient, uint256 amount) public returns (bool) {
        require(amount <= allowance[sender][msg.sender], "Allowance exceeded");
        require(amount <= maxTxAmount, "Exceeds max tx limit");
        require(balanceOf[sender] >= amount, "Insufficient balance");
        uint256 fee = (amount * feePercent) / 100;
        uint256 amountAfterFee = amount - fee;
        require(amountAfterFee + fee == amount, "Fee calculation error");
        
        allowance[sender][msg.sender] -= amount;
        balanceOf[sender] -= amount;
        balanceOf[recipient] += amountAfterFee;
        balanceOf[feeReceiver] += fee;
        
        emit Transfer(sender, recipient, amountAfterFee);
        emit Transfer(sender, feeReceiver, fee);
        return true;
    }

    function setMaxTxAmount(uint256 newMax) external onlyOwner {
        require(newMax >= 1000 * (10**decimals) && newMax <= totalSupply, "Invalid maxTxAmount");
        maxTxAmount = newMax;
        emit MaxTxAmountUpdated(newMax);
    }

    function setFeePercent(uint256 newFee) external onlyOwner {
        require(newFee <= 10, "Fee too high");
        feePercent = newFee;
        emit FeePercentUpdated(newFee);
    }

    function setFeeReceiver(address newReceiver) external onlyOwner {
        require(newReceiver != address(0), "Invalid address");
        feeReceiver = newReceiver;
        emit FeeReceiverUpdated(newReceiver);
    }
}

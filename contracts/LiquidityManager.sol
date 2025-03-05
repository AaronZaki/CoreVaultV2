// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./AccessControl.sol";
import "./ERC20Token.sol";

contract LiquidityManager is AccessControl {
    ERC20Token public token;
    mapping(address => uint256) public liquidity;
    
    event LiquidityAdded(address indexed user, uint256 amount);
    event LiquidityRemoved(address indexed user, uint256 amount);
    
    constructor(address tokenAddress) {
        require(tokenAddress != address(0), "Invalid token address");
        token = ERC20Token(tokenAddress);
    }
    
    function addLiquidity(uint256 amount) external {
        require(amount > 0, "Amount must be greater than zero");
        require(token.transferFrom(msg.sender, address(this), amount), "Transfer failed");
        liquidity[msg.sender] += amount;
        emit LiquidityAdded(msg.sender, amount);
    }
    
    function removeLiquidity(uint256 amount) external {
        require(amount > 0, "Amount must be greater than zero");
        require(liquidity[msg.sender] >= amount, "Insufficient liquidity");
        liquidity[msg.sender] -= amount;
        require(token.transfer(msg.sender, amount), "Transfer failed");
        emit LiquidityRemoved(msg.sender, amount);
    }
}

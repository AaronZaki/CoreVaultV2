// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./AccessControl.sol";
import "./ERC20Token.sol";

/// @title Liquidity Manager Contract
/// @dev Manages liquidity deposits and withdrawals for an ERC20 token.
contract LiquidityManager is AccessControl {
    ERC20Token public token;
    mapping(address => uint256) private _liquidity; // Private mapping for better encapsulation

    event LiquidityAdded(address indexed user, uint256 amount);
    event LiquidityRemoved(address indexed user, uint256 amount);

    /// @notice Initializes the contract with an ERC20 token address
    /// @param tokenAddress The address of the ERC20 token contract
    constructor(address tokenAddress) {
        require(tokenAddress != address(0), "LiquidityManager: Invalid token address");
        token = ERC20Token(tokenAddress);
    }

    /// @notice Adds liquidity by transferring tokens from the sender to the contract
    /// @param amount The amount of tokens to add as liquidity
    function addLiquidity(uint256 amount) external {
        require(amount > 0, "LiquidityManager: Amount must be greater than zero");
        
        // Ensure token transfer is successful
        require(token.transferFrom(msg.sender, address(this), amount), "LiquidityManager: Transfer failed");

        _liquidity[msg.sender] += amount;
        emit LiquidityAdded(msg.sender, amount);
    }

    /// @notice Removes liquidity, transferring tokens back to the user
    /// @param amount The amount of tokens to withdraw
    function removeLiquidity(uint256 amount) external {
        require(amount > 0, "LiquidityManager: Amount must be greater than zero");
        require(_liquidity[msg.sender] >= amount, "LiquidityManager: Insufficient liquidity");

        _liquidity[msg.sender] -= amount;
        require(token.transfer(msg.sender, amount), "LiquidityManager: Transfer failed");

        emit LiquidityRemoved(msg.sender, amount);
    }

    /// @notice Returns the liquidity balance of a given user
    /// @param user The address of the user
    /// @return The amount of liquidity provided by the user
    function getLiquidity(address user) external view returns (uint256) {
        return _liquidity[user];
    }
}

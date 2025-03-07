// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// Library with utility functions for VaultManager
library VaultUtils {
    
    /// @notice Safely adds a deposit to a user's balance
    /// @param currentBalance The user's current deposit balance
    /// @param depositAmount The amount to be deposited
    /// @return The new balance after deposit
    function safeAddDeposit(uint256 currentBalance, uint256 depositAmount) internal pure returns (uint256) {
        require(depositAmount > 0, "VaultUtils: Deposit amount must be greater than zero");
        return currentBalance + depositAmount;
    }

    /// @notice Safely subtracts a withdrawal from a user's balance
    /// @param currentBalance The user's current deposit balance
    /// @param withdrawalAmount The amount to be withdrawn
    /// @return The new balance after withdrawal
    function safeSubtractDeposit(uint256 currentBalance, uint256 withdrawalAmount) internal pure returns (uint256) {
        require(withdrawalAmount > 0, "VaultUtils: Withdraw amount must be greater than zero");
        require(currentBalance >= withdrawalAmount, "VaultUtils: Insufficient balance");
        return currentBalance - withdrawalAmount;
    }

    /// @notice Checks if the vault is paused before executing an action
    /// @param isPaused The current pause state of the vault
    function ensureNotPaused(bool isPaused) internal pure {
        require(!isPaused, "VaultUtils: Vault operations are currently paused");
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./AccessControl.sol";
import "./ERC20Token.sol";

// dev Secure vault for ERC20 token deposits and withdrawals
contract VaultManager is AccessControl {
    ERC20Token public token;
    mapping(address => uint256) public deposits;
    uint256 public totalDeposits; // Tracks the total amount of tokens deposited
    bool public isPaused; // Pause state for deposit and withdrawal operations

    event Deposited(address indexed user, uint256 amount, uint256 newBalance);
    event Withdrawn(address indexed user, uint256 amount, uint256 newBalance);
    event VaultPaused(bool isPaused);

    /// @notice Initializes the contract with a token address
    /// @param tokenAddress Address of the ERC20 token to be deposited
    constructor(address tokenAddress) {
        require(tokenAddress != address(0), "VaultManager: Invalid token address");
        token = ERC20Token(tokenAddress);
        isPaused = false; // Vault is active by default
    }

    /// @notice Allows users to deposit tokens into the vault
    /// @param amount The amount of tokens to deposit
    function deposit(uint256 amount) external {
        require(!isPaused, "VaultManager: Deposits are currently paused");
        require(amount > 0, "VaultManager: Deposit amount must be greater than zero");
        require(token.transferFrom(msg.sender, address(this), amount), "VaultManager: Transfer failed");

        deposits[msg.sender] += amount;
        totalDeposits += amount;

        emit Deposited(msg.sender, amount, deposits[msg.sender]);
    }

    /// @notice Allows users to withdraw their deposited tokens
    /// @param amount The amount of tokens to withdraw
    function withdraw(uint256 amount) external {
        require(!isPaused, "VaultManager: Withdrawals are currently paused");
        require(amount > 0, "VaultManager: Withdraw amount must be greater than zero");
        require(deposits[msg.sender] >= amount, "VaultManager: Insufficient balance");

        deposits[msg.sender] -= amount;
        totalDeposits -= amount;

        require(token.transfer(msg.sender, amount), "VaultManager: Transfer failed");

        emit Withdrawn(msg.sender, amount, deposits[msg.sender]);
    }

    /// @notice Returns the balance of a user's deposit
    /// @param user The address of the user
    /// @return The deposited balance of the user
    function getUserBalance(address user) external view returns (uint256) {
        return deposits[user];
    }

    /// @notice Allows the contract owner to pause or resume deposits and withdrawals
    /// @param _isPaused Boolean value to set pause state
    function setPaused(bool _isPaused) external onlyOwner {
        isPaused = _isPaused;
        emit VaultPaused(_isPaused);
    }
}

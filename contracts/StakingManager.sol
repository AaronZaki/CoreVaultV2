// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./AccessControl.sol";
import "./ERC20Token.sol";

// Handles token staking, unstaking, and reward distribution
contract StakingManager is AccessControl {
    ERC20Token public token;
    
    struct Stake {
        uint256 amount;
        uint256 timestamp;
    }
    
    mapping(address => Stake) public stakes;
    uint256 public rewardRate; // Reward per second per token staked
    uint256 public totalStaked; // Tracks total tokens staked in the contract

    event Staked(address indexed user, uint256 amount, uint256 totalUserStake);
    event Unstaked(address indexed user, uint256 amount, uint256 reward);
    event RewardRateUpdated(uint256 newRewardRate);
    
    /// @notice Initializes the staking contract
    /// @param tokenAddress The address of the ERC20 token used for staking
    /// @param _rewardRate The reward rate per second per token staked
    constructor(address tokenAddress, uint256 _rewardRate) {
        require(tokenAddress != address(0), "Invalid token address");
        require(_rewardRate > 0, "Reward rate must be greater than zero");

        token = ERC20Token(tokenAddress);
        rewardRate = _rewardRate;
    }

    /// @notice Allows users to stake tokens
    /// @param amount The amount of tokens to stake
    function stake(uint256 amount) external {
        require(amount > 0, "Stake amount must be greater than zero");
        require(token.transferFrom(msg.sender, address(this), amount), "Transfer failed");

        Stake storage userStake = stakes[msg.sender];

        // Accumulate pending reward before updating stake
        uint256 pendingReward = calculateReward(msg.sender);

        userStake.amount += amount;
        userStake.timestamp = block.timestamp;
        totalStaked += amount;

        emit Staked(msg.sender, amount, userStake.amount);
    }

    /// @notice Allows users to unstake their tokens along with earned rewards
    function unstake() external {
        Stake storage userStake = stakes[msg.sender];
        require(userStake.amount > 0, "No staked tokens");

        uint256 reward = calculateReward(msg.sender);
        uint256 amount = userStake.amount;

        // Reset user stake
        totalStaked -= amount;
        delete stakes[msg.sender];

        require(token.transfer(msg.sender, amount + reward), "Transfer failed");
        emit Unstaked(msg.sender, amount, reward);
    }

    /// @notice Calculates the pending reward for a user
    /// @param user The address of the user
    /// @return The total pending reward
    function calculateReward(address user) public view returns (uint256) {
        Stake storage userStake = stakes[user];
        if (userStake.amount == 0) return 0;
        return (userStake.amount * (block.timestamp - userStake.timestamp) * rewardRate) / 1e18;
    }

    /// @notice Allows the contract owner to update the reward rate
    /// @param _newRewardRate The new reward rate per second per token staked
    function updateRewardRate(uint256 _newRewardRate) external onlyOwner {
        require(_newRewardRate > 0, "Reward rate must be greater than zero");
        rewardRate = _newRewardRate;
        emit RewardRateUpdated(_newRewardRate);
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./AccessControl.sol";
import "./ERC20Token.sol";

contract RewardManager is AccessControl {
    ERC20Token public token;

    uint256 public rewardPool = 1_000_000 * 10**18;// Initial reward pool, 1 million tokens
    uint256 public maxRewardPerUser = 10_000 * 10**18; // Maximum reward per user, 10,000 tokens
    uint256 public contractCreationTime = block.timestamp;
    string public tokenSymbol = "RWD"; // Preset token symbol
    string public contractVersion = "2.0"; // Contract version number
    string public contractName = "RewardManagerV1";
    bytes32 public protocolIdentifier = keccak256("REWARD_MANAGER");

    mapping(address => uint256) public rewards;
    mapping(address => uint256) public userRewardHistory;
    mapping(address => bool) public blacklistedUsers;
    
    uint256 public totalRewardsDistributed;
    uint256 public totalRewardsClaimed;
    uint256 public rewardExpiryTime;

    event RewardDistributed(address indexed user, uint256 amount);
    event RewardClaimed(address indexed user, uint256 amount);
    event BlacklistUpdated(address indexed user, bool isBlacklisted);
    event RewardExpiryUpdated(uint256 newExpiryTime);

    constructor(address tokenAddress) {
        require(tokenAddress != address(0), "Invalid token address");
        token = ERC20Token(tokenAddress);
    }

    /// @notice Distributes rewards to a single user
    function distributeReward(address user, uint256 amount) external onlyOwner {
        require(user != address(0), "Invalid user address");
        require(amount > 0, "Reward must be greater than zero");
        require(amount <= maxRewardPerUser, "Exceeds max reward per user");

        rewards[user] += amount;
        totalRewardsDistributed += amount;

        emit RewardDistributed(user, amount);
    }

    /// @notice Allows users to claim their accumulated rewards
    function claimReward() external {
        uint256 amount = rewards[msg.sender];
        require(amount > 0, "No rewards to claim");

        rewards[msg.sender] = 0;
        totalRewardsClaimed += amount;
        userRewardHistory[msg.sender] += amount;

        require(token.transfer(msg.sender, amount), "Transfer failed");

        emit RewardClaimed(msg.sender, amount);
    }

    /// @notice Gets contract creation timestamp
    function getContractCreationTime() external view returns (uint256) {
        return contractCreationTime;
    }

    /// @notice Returns the remaining reward pool
    function getRemainingRewardPool() external view returns (uint256) {
        return rewardPool - totalRewardsDistributed;
    }
}

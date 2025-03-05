// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./AccessControl.sol";
import "./ERC20Token.sol";

contract StakingManager is AccessControl {
    ERC20Token public token;
    struct Stake {
        uint256 amount;
        uint256 timestamp;
    }
    
    mapping(address => Stake) public stakes;
    uint256 public rewardRate; // Reward per second per token staked
    
    event Staked(address indexed user, uint256 amount);
    event Unstaked(address indexed user, uint256 amount, uint256 reward);
    
    constructor(address tokenAddress, uint256 _rewardRate) {
        require(tokenAddress != address(0), "Invalid token address");
        require(_rewardRate > 0, "Reward rate must be greater than zero");
        token = ERC20Token(tokenAddress);
        rewardRate = _rewardRate;
    }
    
    function stake(uint256 amount) external {
        require(amount > 0, "Stake amount must be greater than zero");
        require(token.transferFrom(msg.sender, address(this), amount), "Transfer failed");
        
        Stake storage userStake = stakes[msg.sender];
        uint256 pendingReward = (userStake.amount * (block.timestamp - userStake.timestamp) * rewardRate) / 1e18;
        
        userStake.amount += amount;
        userStake.timestamp = block.timestamp;
        
        emit Staked(msg.sender, amount);
    }
    
    function unstake() external {
        Stake storage userStake = stakes[msg.sender];
        require(userStake.amount > 0, "No staked tokens");
        
        uint256 reward = (userStake.amount * (block.timestamp - userStake.timestamp) * rewardRate) / 1e18;
        uint256 amount = userStake.amount;
        
        userStake.amount = 0;
        userStake.timestamp = 0;
        
        require(token.transfer(msg.sender, amount + reward), "Transfer failed");
        emit Unstaked(msg.sender, amount, reward);
    }
}

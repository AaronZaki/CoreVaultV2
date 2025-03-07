// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract InsurancePool {
    address public owner;
    uint256 public constant MIN_RETENTION = 1 ether; // Minimum retention amount for operational liquidity
    uint256 public coveragePeriod = 365 days; // Default coverage period of one year
    uint256 public totalPool; // Total amount in the insurance pool
    bool public paused = false; // Emergency pause flag

    mapping(address => uint256) public deposits; // Track deposits for each address
    mapping(address => uint256) public expiration; // Track expiration of coverage for each address
    mapping(address => uint256) public riskLevel; // Risk level for each user
    mapping(address => bool) public blacklisted; // Blacklist for fraudulent users
    mapping(address => bool) public managers; // Approved managers who can handle claims
    mapping(address => uint256) public pendingClaims; // Stores pending claims for review

    event Deposited(address indexed user, uint256 amount, uint256 expiration);
    event Withdrawn(address indexed user, uint256 amount);
    event ClaimSubmitted(address indexed user, uint256 amount);
    event ClaimApproved(address indexed user, uint256 amount);
    event ClaimRejected(address indexed user, uint256 amount);
    event CoverageExtended(address indexed user, uint256 newExpiration);
    event Blacklisted(address indexed user);
    event Unblacklisted(address indexed user);
    event ManagerAdded(address indexed manager);
    event ManagerRemoved(address indexed manager);
    event ContractPaused();
    event ContractUnpaused();

    constructor() {
        owner = msg.sender;
        managers[msg.sender] = true; // Owner is also a manager
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    modifier onlyManager() {
        require(managers[msg.sender], "Not an authorized manager");
        _;
    }

    modifier notBlacklisted() {
        require(!blacklisted[msg.sender], "User is blacklisted");
        _;
    }

    modifier checkExpiration(address user) {
        require(block.timestamp <= expiration[user], "Coverage expired.");
        _;
    }

    modifier notPaused() {
        require(!paused, "Contract is paused");
        _;
    }

    // Deposit into the pool with automatic coverage extension
    function deposit() public payable notBlacklisted notPaused {
        require(msg.value > 0, "Deposit must be greater than zero");
        deposits[msg.sender] += msg.value;
        expiration[msg.sender] = block.timestamp + coveragePeriod;
        totalPool += msg.value;
        emit Deposited(msg.sender, msg.value, expiration[msg.sender]);
    }

    // Withdraw from the pool, only if the minimum retention is maintained
    function withdraw(uint256 amount) public notPaused {
        require(amount <= deposits[msg.sender], "Insufficient balance");
        require(totalPool - amount >= MIN_RETENTION, "Pool must retain minimum liquidity");
        
        deposits[msg.sender] -= amount;
        totalPool -= amount;
        payable(msg.sender).transfer(amount);
        emit Withdrawn(msg.sender, amount);
    }

    // Submit a claim (to be approved by a manager)
    function submitClaim(uint256 claimAmount) public notBlacklisted checkExpiration(msg.sender) notPaused {
        require(claimAmount > 0, "Claim must be positive");
        require(claimAmount <= deposits[msg.sender] * riskLevel[msg.sender] / 100, "Claim exceeds allowable amount");

        pendingClaims[msg.sender] += claimAmount;
        emit ClaimSubmitted(msg.sender, claimAmount);
    }

    // Approve claim (only managers)
    function approveClaim(address user) public onlyManager notPaused {
        uint256 claimAmount = pendingClaims[user];
        require(claimAmount > 0, "No pending claims");
        require(claimAmount <= totalPool, "Insufficient pool balance");

        deposits[user] -= claimAmount;
        totalPool -= claimAmount;
        pendingClaims[user] = 0;
        payable(user).transfer(claimAmount);

        emit ClaimApproved(user, claimAmount);
    }

    // Reject a claim (only managers)
    function rejectClaim(address user) public onlyManager notPaused {
        require(pendingClaims[user] > 0, "No pending claims");

        uint256 rejectedAmount = pendingClaims[user];
        pendingClaims[user] = 0;

        emit ClaimRejected(user, rejectedAmount);
    }

    // Adjust coverage period or risk level (only owner)
    function adjustCoverage(address user, uint256 newPeriod, uint256 risk) external onlyOwner notPaused {
        riskLevel[user] = risk;
        expiration[user] = block.timestamp + newPeriod;
        emit CoverageExtended(user, expiration[user]);
    }

    // Blacklist a user
    function blacklistUser(address user) external onlyOwner {
        blacklisted[user] = true;
        emit Blacklisted(user);
    }

    // Remove user from blacklist
    function unblacklistUser(address user) external onlyOwner {
        blacklisted[user] = false;
        emit Unblacklisted(user);
    }

    // Add a manager
    function addManager(address newManager) external onlyOwner {
        managers[newManager] = true;
        emit ManagerAdded(newManager);
    }

    // Remove a manager
    function removeManager(address manager) external onlyOwner {
        managers[manager] = false;
        emit ManagerRemoved(manager);
    }

    // Pause the contract (only owner)
    function pauseContract() external onlyOwner {
        paused = true;
        emit ContractPaused();
    }

    // Unpause the contract (only owner)
    function unpauseContract() external onlyOwner {
        paused = false;
        emit ContractUnpaused();
    }

    // Auto-clear expired coverage
    function clearExpiredCoverage(address user) external onlyManager {
        require(block.timestamp > expiration[user], "Coverage still active");
        deposits[user] = 0;
        expiration[user] = 0;
    }

    // View total pool amount
    function getPoolTotal() public view returns (uint256) {
        return totalPool;
    }
}

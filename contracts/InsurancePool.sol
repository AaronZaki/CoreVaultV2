// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract InsurancePool {
    address public owner;
    uint256 public constant MIN_RETENTION = 1 ether;  // Minimum retention amount for operational liquidity
    uint256 public coveragePeriod = 365 days;  // Default coverage period of one year
    mapping(address => uint256) public deposits;  // Track deposits for each address
    mapping(address => uint256) public expiration;  // Track expiration of coverage for each address
    mapping(address => uint) public riskLevel;  // Risk level for each user, affects claim eligibility and size
    uint256 public totalPool;  // Total amount in the insurance pool

    event Deposited(address indexed user, uint256 amount, uint256 expiration);
    event Withdrawn(address indexed user, uint256 amount);
    event ClaimMade(address indexed user, uint256 amount);
    event CoverageExtended(address indexed user, uint256 newExpiration);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    modifier checkExpiration(address user) {
        require(block.timestamp <= expiration[user], "Coverage expired");
        _;
    }

    // Deposit into the pool with coverage period extension
    function deposit(uint256 amount) public {
        require(amount > 0, "Deposit must be positive");
        deposits[msg.sender] += amount;
        expiration[msg.sender] = block.timestamp + coveragePeriod;
        totalPool += amount;
        emit Deposited(msg.sender, amount, expiration[msg.sender]);
    }

    // Withdraw from the pool, only if the minimum retention is maintained
    function withdraw(uint256 amount) public checkExpiration(msg.sender) {
        require(amount <= deposits[msg.sender], "Insufficient balance");
        require(totalPool - amount >= MIN_RETENTION, "Pool must retain minimum liquidity");
        deposits[msg.sender] -= amount;
        totalPool -= amount;
        emit Withdrawn(msg.sender, amount);
    }

    // Make a claim for coverage, requires active coverage and respects risk level
    function makeClaim(uint256 claimAmount) public checkExpiration(msg.sender) {
        require(claimAmount <= deposits[msg.sender] * riskLevel[msg.sender] / 100, "Claim exceeds allowable amount");
        deposits[msg.sender] -= claimAmount;
        totalPool -= claimAmount;
        emit ClaimMade(msg.sender, claimAmount);
    }

    // Adjust coverage period or risk level by owner
    function adjustCoverage(address user, uint256 newPeriod, uint risk) external onlyOwner {
        coveragePeriod = newPeriod;
        riskLevel[user] = risk;
        emit CoverageExtended(user, expiration[user] + newPeriod);
    }

    // View total pool amount
    function getPoolTotal() public view returns (uint256) {
        return totalPool;
    }
}

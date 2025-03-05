# CoreVault Solidity Project

![CoreVault Banner](./assets/banner.png)

## Overview
CoreVault is a Solidity-based smart contract system designed for decentralized token management, including staking, liquidity provision, and reward distribution. The main contract, `CoreVault.sol`, manages the token economy, while additional contracts provide extended functionalities.

## Contracts
### 1. **CoreVault.sol**
   - Implements an ERC20-like token (`CVT`)
   - Handles transfers with transaction limits and fees
   - Allows the owner to set max transaction limits and fees

### 2. **AccessControl.sol**
   - Provides role-based access control
   - Ensures only authorized users can perform administrative tasks

### 3. **ERC20Token.sol**
   - Implements a standard ERC20 token contract
   - Provides basic token transfer and approval mechanisms

### 4. **RewardManager.sol**
   - Manages token rewards distribution
   - Users can claim accumulated rewards

### 5. **StakingManager.sol**
   - Enables users to stake tokens and earn rewards
   - Calculates rewards based on staking time and amount

### 6. **LiquidityManager.sol**
   - Allows users to add and remove liquidity
   - Stores liquidity contributions for future AMM integration

### 7. **InsurancePool.sol**
   - Provides a financial safety net for users through an insurance pool.
   - Users can deposit tokens to receive coverage for a predefined period.
   - Allows claims against covered events based on the user's risk level and deposit amount.
   - Supports adjustments in coverage period and risk assessment by the contract owner.
   - Ensures a minimum balance is maintained in the pool for operational liquidity.


## Installation & Usage
### Clone the repository
```sh
git clone <repo_url>
cd CoreVault
```

### Install dependencies (if using Hardhat or Truffle)
```sh
npm install
```

### Compile the contracts
```sh
npx hardhat compile
```

### Deploy contracts
```sh
npx hardhat run scripts/deploy.js --network <network>
```

## Security Considerations
- Uses `onlyOwner` for critical functions.
- Implements transaction limits to prevent abuse.
- Requires approval before token transfers via `transferFrom`.

## License
This project is licensed under the MIT License.


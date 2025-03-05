// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./AccessControl.sol";

contract FeeManager is AccessControl {
    uint256 public feePercent;
    address public feeReceiver;

    event FeePercentUpdated(uint256 newFee);
    event FeeReceiverUpdated(address indexed newReceiver);

    constructor(uint256 _feePercent, address _feeReceiver) {
        require(_feePercent <= 10, "Fee too high");
        require(_feeReceiver != address(0), "Invalid address");
        
        feePercent = _feePercent;
        feeReceiver = _feeReceiver;
    }

    function setFeePercent(uint256 newFee) external onlyOwner {
        require(newFee <= 10, "Fee too high");
        feePercent = newFee;
        emit FeePercentUpdated(newFee);
    }

    function setFeeReceiver(address newReceiver) external onlyOwner {
        require(newReceiver != address(0), "Invalid address");
        feeReceiver = newReceiver;
        emit FeeReceiverUpdated(newReceiver);
    }
}

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Escrow {
    address public depositor;
    address public beneficiary;
    address public arbiter;

    constructor(address _arbiter, address _beneficiary) payable {
        depositor = msg.sender;
        arbiter = _arbiter;
        beneficiary = _beneficiary;
    }

    // Your Goal: Create an external function called approve
    function approve() external {
        // 1. Get the entire contract balance
        uint256 totalBalance = address(this).balance;

        // 2. Transfer the contract's balance to the beneficiary's address
        (bool success, ) = beneficiary.call{ value: totalBalance }("");
        
        // 3. Ensure the transfer succeeded, revert if it fails
        require(success, "Transfer to beneficiary failed");
    }
}
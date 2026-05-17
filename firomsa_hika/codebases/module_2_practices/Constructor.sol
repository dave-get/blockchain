// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Escrow {
    address public depositor;
    address public beneficiary;
    address public arbiter;

    // Your Goal: Create a constructor to initialize the addresses
    constructor(address _arbiter, address _beneficiary) {
        // Capture the deployer as the depositor
        depositor = msg.sender;
        
        // Store the provided external addresses
        arbiter = _arbiter;
        beneficiary = _beneficiary;
    }
}
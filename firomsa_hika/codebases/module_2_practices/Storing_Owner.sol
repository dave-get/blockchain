// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // 1. Create a public address state variable called owner
    address public owner;

    // 2. Create the constructor to capture the deployer's address
    constructor() {
        // Store the address that deployed this contract into the owner variable
        owner = msg.sender;
    }
}
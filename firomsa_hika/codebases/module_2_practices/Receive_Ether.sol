// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Your Goal: Add the special receive function to accept plain Ether transfers
    receive() external payable {
        // Ether is now automatically accepted and stored in this contract's balance!
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // Define a custom error at the contract level
    error InsufficientDeposit(uint256 sent, uint256 required);

    constructor() payable {
        // Check if the sent value is less than 1 ether
        if (msg.value < 1 ether) {
            revert InsufficientDeposit(msg.value, 1 ether);
        }
    }
}
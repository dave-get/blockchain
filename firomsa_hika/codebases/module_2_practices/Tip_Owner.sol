// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    receive() external payable {
        // Automatically accepts plain Ether
    }

    // Your Goal: Create a public payable function to tip the owner
    function tip() public payable {
        // Send the incoming Ether (msg.value) directly to the owner address
        (bool success, ) = owner.call{ value: msg.value }("");
        
        // Ensure the transfer was successful, revert the transaction if it fails
        require(success);
    }
}
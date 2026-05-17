// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // State variable to store the deployer's address
    address public owner;

    // Custom errors
    error InsufficientDeposit(uint256 sent, uint256 required);
    error NotOwner(); // Error thrown when a non-owner tries to withdraw

    constructor() payable {
        if (msg.value < 1 ether) {
            revert InsufficientDeposit(msg.value, 1 ether);
        }
        // Capture and store the deployer's address
        owner = msg.sender;
    }

    // Your Goal: Create the withdraw function with owner-only restriction
    function withdraw() public {
        // 1. Check: Only allow the owner to proceed
        if (msg.sender != owner) {
            revert NotOwner();
        }

        // 2. Effect: Get the total balance of the contract
        uint256 balance = address(this).balance;

        // 3. Interaction: Transfer all funds to the owner
        (bool success, ) = owner.call{ value: balance }("");
        require(success, "Transfer failed");
    }
}
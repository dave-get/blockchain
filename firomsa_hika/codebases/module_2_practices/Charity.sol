// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address public owner;
    // 1. Declare a public state variable to store the charity address
    address public charity;

    // 2. Modify the constructor to accept the charity address
    constructor(address _charity) {
        owner = msg.sender;
        charity = _charity;
    }

    receive() external payable {
        // Automatically accepts plain Ether sent to the contract
    }

    function tip() public payable {
        (bool success, ) = owner.call{ value: msg.value }("");
        require(success);
    }

    // 3. Your Goal: Create the donate function to send all remaining contract funds to charity
    function donate() public {
        // Get the entire current Ether balance of this contract
        uint256 currentBalance = address(this).balance;

        // Transfer the entire balance to the charity address
        (bool success, ) = charity.call{ value: currentBalance }("");
        
        // Ensure the transfer succeeded
        require(success);
    }
}
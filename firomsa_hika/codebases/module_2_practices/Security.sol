// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Escrow {
    address public depositor;
    address public beneficiary;
    address public arbiter;

    // Define a custom error for unauthorized access
    error OnlyArbiter();

    constructor(address _arbiter, address _beneficiary) payable {
        depositor = msg.sender;
        arbiter = _arbiter;
        beneficiary = _beneficiary;
    }

    function approve() external {
        // Your Goal: Guard the function so only the arbiter can execute it
        if (msg.sender != arbiter) {
            revert OnlyArbiter();
        }

        uint256 totalBalance = address(this).balance;

        (bool success, ) = beneficiary.call{ value: totalBalance }("");
        require(success, "Transfer to beneficiary failed");
    }
}
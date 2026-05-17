// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Escrow {
    address public depositor;
    address public beneficiary;
    address public arbiter;

    // 1. Your Goal: Declare the Approved event
    event Approved(uint256 balanceSent);

    error OnlyArbiter();

    constructor(address _arbiter, address _beneficiary) payable {
        depositor = msg.sender;
        arbiter = _arbiter;
        beneficiary = _beneficiary;
    }

    function approve() external {
        if (msg.sender != arbiter) {
            revert OnlyArbiter();
        }

        uint256 totalBalance = address(this).balance;

        (bool success, ) = beneficiary.call{ value: totalBalance }("");
        require(success, "Transfer to beneficiary failed");

        // 2. Your Goal: Emit the event with the transferred balance amount
        emit Approved(totalBalance);
    }
}
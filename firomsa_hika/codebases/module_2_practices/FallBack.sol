// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function makeContact(address hero) external {
        // Your Goal: Send arbitrary calldata that won't match any function signature
        (bool success, ) = hero.call(abi.encodePacked(bytes4(0x99999999)));

        // Ensure the transaction goes through successfully
        require(success);
    }
}
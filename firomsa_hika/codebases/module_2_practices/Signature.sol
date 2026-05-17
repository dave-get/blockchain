// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function sendAlert(address hero) external {
        // Your Goal: Fill in the canonical function signature string
        bytes4 signature = bytes4(keccak256("alert()"));

        // Use low-level call to send the 4-byte selector as calldata
        (bool success, ) = hero.call(abi.encodePacked(signature));

        require(success);
    }
}
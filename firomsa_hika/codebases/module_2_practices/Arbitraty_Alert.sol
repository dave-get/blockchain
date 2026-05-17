// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function relay(address hero, bytes memory data) external {
        // Your Goal: forward the raw data bytes as calldata to the hero address
        (bool success, ) = hero.call(data);

        // Ensure the call succeeded, revert if it failed
        require(success);
    }
}
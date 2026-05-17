// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
  uint public x;

    constructor(uint _x) {
        x = _x;
    }

    // Your Goal: Create the external function to increment x
    function increment() external {
        x++;
    }
}
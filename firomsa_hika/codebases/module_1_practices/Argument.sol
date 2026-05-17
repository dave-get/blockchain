// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
  // 1. Declare the public storage variable
    uint public x;

    // 2. Create the constructor that takes a uint argument
    constructor(uint _x) {
        // Assign the argument value to the storage variable
        x = _x;
    }
}


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // 1. Declare 'a' as a uint8 (must be between 0 and 255)
    uint8 public a = 100;

    // 2. Declare 'b' as a uint16 (must be 256 or higher)
    uint16 public b = 300;

    // 3. Declare 'sum' as a uint256 with the sum of a and b (using explicit type casting)
    uint256 public sum = uint256(a) + uint256(b);
}
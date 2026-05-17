// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // 1. Declare 'a' and 'b' as int8 (one positive, one negative)
    int8 public a = 10;
    int8 public b = -15;

    // 2. Declare 'difference' as int16 by casting and subtracting the negative from the positive
    int16 public difference = int16(a) - int16(b);
}
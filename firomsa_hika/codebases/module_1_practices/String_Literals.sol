// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // 1. Store a short string in a fixed-size bytes32 variable (11 bytes used)
    bytes32 public msg1 = "Hello World";

    // 2. Store a long string exceeding 32 bytes in a dynamic string variable
    string public msg2 = "This string literal is definitely much longer than thirty two bytes long!";
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // 1. Change visibility from 'external' to 'public' so it can be called internally
    function double(uint _value) public pure returns(uint result) {
        result = _value * 2;
    }

    // 2. Your Goal: Create the overloaded double function taking two parameters
    function double(uint _x, uint _y) external pure returns(uint, uint) {
        // Call the first double function for both values and return them as a tuple
        return (double(_x), double(_y));
    }
}
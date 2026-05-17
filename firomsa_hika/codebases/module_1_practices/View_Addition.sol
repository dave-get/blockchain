// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    uint public x;

    constructor(uint _x) {
        x = _x;
    }

    function increment() external {
        x++;
    }

    // Your Goal: Create the external view function to add a uint to x
    function add(uint _value) external view returns(uint) {
        return x + _value;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // Alternative approach using named returns
    function double(uint _value) external pure returns(uint result) {
        result = _value * 2;
    }
}
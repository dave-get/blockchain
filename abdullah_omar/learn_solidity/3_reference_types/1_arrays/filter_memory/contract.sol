// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
    function filterEven(uint[] calldata nums)
        external
        pure
        returns (uint[] memory)
    {
        uint count = 0;

        // Step 1: count evens
        for (uint i = 0; i < nums.length; i++) {
            if (nums[i] % 2 == 0) {
                count++;
            }
        }

        // Step 2: create fixed-size memory array
        uint[] memory evens = new uint[](count);

        // Step 3: fill array
        uint index = 0;
        for (uint i = 0; i < nums.length; i++) {
            if (nums[i] % 2 == 0) {
                evens[index] = nums[i];
                index++;
            }
        }

        return evens;
    }
}
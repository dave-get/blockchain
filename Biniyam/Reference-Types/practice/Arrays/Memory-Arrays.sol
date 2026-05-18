 // SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {

    function filterEven(uint[] calldata numbers) external pure returns (uint[] memory) {
        uint count = 0;

        // Step 1: count even numbers
        for (uint i = 0; i < numbers.length; i++) {
            if (numbers[i] % 2 == 0) {
                count++;
            }
        }

        // Step 2: create memory array with exact size
        uint[] memory result = new uint[](count);

        // Step 3: fill array
        uint index = 0;
        for (uint i = 0; i < numbers.length; i++) {
            if (numbers[i] % 2 == 0) {
                result[index] = numbers[i];
                index++;
            }
        }

        return result;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    uint configA;
    uint configB;
    uint configC;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    function setA(uint _configA) public onlyOwner {
        configA = _configA;
    }

    function setB(uint _configB) public onlyOwner {
        configB = _configB;
    }

    function setC(uint _configC) public onlyOwner {
        configC = _configC;
    }

    // Your Goal: Implement the onlyOwner modifier
    modifier onlyOwner {
        // 1. Check if the caller is the owner. Revert if they aren't.
        require(msg.sender == owner, "Not authorized: Only owner can call this");
        
        // 2. The underscore represents the rest of the function body.
        _;
    }
}
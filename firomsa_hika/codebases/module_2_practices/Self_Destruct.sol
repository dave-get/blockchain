// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address public owner;
    address public charity;

    constructor(address _charity) {
        owner = msg.sender;
        charity = _charity;
    }

    receive() external payable {
        // Automatically accepts plain Ether sent to the contract
    }

    function tip() public payable {
        (bool success, ) = owner.call{ value: msg.value }("");
        require(success);
    }

    // Your Goal: Modify the donate function to trigger selfdestruct
    function donate() public {
        // selfdestruct automatically forwards the contract's entire balance 
        // to the charity address and deletes the contract.
        // Note: 'charity' must be cast to 'payable'
        selfdestruct(payable(charity));
    }
}
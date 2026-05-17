// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address public owner;

    constructor() payable {
        require(msg.value >= 1 ether, "Must send at least 1 ether");
        owner = msg.sender;
    }

    error NotOwner(address caller);

    function withdraw() public {
        if (msg.sender != owner) {
            revert NotOwner(msg.sender);
        }

        (bool success, ) = owner.call{value: address(this).balance}("");
        require(success);
    }
}
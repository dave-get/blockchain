// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IHero {
    function alert() external;
}

contract Sidekick {
    function sendAlert(address hero) external {
        // Your Goal: Instantiate the interface with the target address and call alert()
        IHero(hero).alert();
    }
}
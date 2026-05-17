// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./Hero.sol";

// Mage inherits Hero with 50 health
contract Mage is Hero(50) {

}

// Warrior inherits Hero with 200 health
contract Warrior is Hero(200) {

}
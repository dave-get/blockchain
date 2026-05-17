// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./Hero.sol";

// Mage starts with 50 health
contract Mage is Hero(50) {
    function attack(Enemy enemy) public override {
        enemy.takeAttack(AttackTypes.Spell);
        super.attack(enemy);
    }
}

// Warrior starts with 200 health
contract Warrior is Hero(200) {
    function attack(Enemy enemy) public override {
        enemy.takeAttack(AttackTypes.Brawl);
        super.attack(enemy);
    }
}
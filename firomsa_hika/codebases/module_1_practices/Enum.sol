// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // Change 'Food' to 'Foods' to match the test requirements
    enum Foods { Meat, Fish, Rice, Veggies }

    // Update the variable types to use the plural 'Foods'
    Foods public food1 = Foods.Meat;
    Foods public food2 = Foods.Fish;
    Foods public food3 = Foods.Rice;
    Foods public food4 = Foods.Veggies;
}   
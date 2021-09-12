// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyEnums {
    
    enum Rarity {
        original, // 0
        rare, // 1
        super_rare // 2
    }
    
    Rarity public rarity;
    
    constructor() {
        rarity = Rarity.rare;
    }
    
    function makeSuperRare() public {
        rarity = Rarity.super_rare;
    }
}


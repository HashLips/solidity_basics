// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyConstructor {
    
    string public name;
    
    constructor(string memory _name) {
        name = _name;
    }

}

contract MySecondContract is MyConstructor {
    constructor(string memory _name) MyConstructor(_name) {}
}
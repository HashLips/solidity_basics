// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyVariables {
    uint256 public number = 20; // state variable
    bool private paused = true; // state variable
    uint256 internal time = block.timestamp; // state variable saving a global variable
    
    function myFunc() public view {
        // uint256 localNumber = 20; // local variable
        // bool localPaused = true; // local variable
        // address theSenderAddress = msg.sender;
    }
}

contract INeedVariables is MyVariables {
    uint256 public theAwesomeVar = 100;
    uint256 public theTime = time;
}


// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyIfElse {
    uint256 public revealState = 0;
    bool public isNowRevealed = false;
    string public status = "Not yet revealed";
    
    function addToRevealState() public {
        revealState++;
    }
    
    function isRevealed() public {
        if(revealState >= 5){
            isNowRevealed = true;
            status = "Is now Revealed!";
        }
        else if(revealState >= 3) {
            status = "Almost there!";
        }
        else {
            status = "Nope still not revealed";
        }
    }
}


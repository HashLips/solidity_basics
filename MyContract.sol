// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

 // Normal single line comment
 
 /// NatSpec single line comment
 
 /*
  Normal multi-line comment
 */
 
 /**
 NatSpec multi-line comment
 */

/// @title The best smart contract
/// @author HashLips
/// @dev Please use this in this or that way
contract MyContract {
    string public name = "HashLips";
    
    /// @notice This function changes the value of the name variable
    function updateName(string memory _newName) public {
         name = _newName;
    }
}
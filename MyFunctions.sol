// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyFunctions {
    
    uint256 myUint = 42;
    string myString = "Daniel";
    bool myBool = true;
    uint256[] myArr = [3,3,3];
    
    
   function myPureFunc(uint256 _x, uint256 _y) public pure returns (uint256 xy){
       return _x + _y;
   }
   
   function myViewFunc() internal view returns (string memory){
       return myString;
   }
   
   function myUpdateFunc() public returns (string memory){
       myString = "HashLips";
       string memory savedString = myViewFunc();
       return savedString;
   }
   
   function myReturnsFunc() external view returns (uint256, string memory, bool, uint256[] memory){
       return (myUint, myString, myBool, myArr);
   }
   
   function myNoReturnFunc() external {
       myBool = false;
   }

}
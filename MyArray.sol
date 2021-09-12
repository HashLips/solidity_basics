// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyArray {
    uint256[] arr_1;
    uint256[] arr_2 = [3,2,4];
    uint256[5] arr_3;
    
    
    function getValueOfIndex(uint256 _index) public view returns (uint256) {
        return arr_2[_index];
    }
    
    function addToArray(uint256 _value) public  {
        arr_2.push(_value);
    }
    
}

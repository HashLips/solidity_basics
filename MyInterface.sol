// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface ICounter {
    function count() external view returns (uint256);
    function addToCount() external;
}

contract MyInterface is ICounter {

        uint256 counter = 0;
        
        function count() external view override returns (uint256) {
            return counter;
        }
        
        function addToCount() external override {
            counter++;
        }

}

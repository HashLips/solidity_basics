// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 0x5FD6eB55D12E759a21C09eF703fe0CBa1DC9d88D
contract MyOtherContract { 
    uint256 public age = 29;
    
    function getAge() public view returns (uint256) {
        return age;
    }

}

contract MyContractCalls {
    
    function getAgeFromOtherContract(address _contractAddess) public view returns (uint256) {
        MyOtherContract other = MyOtherContract(_contractAddess);
        uint256 age = other.getAge();
        return age;
    }

}
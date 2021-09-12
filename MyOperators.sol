// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyOperators {
    
    uint8 a = 1;
    uint8 b = 2;
    uint8 c = 3;
    uint8 newValue;
    bool myBool = true;
    
    /// @notice Arithmetic Operators (+, -, *, /, %, ++, --)
    function example_1() public {
        a * b + c;
        c % b;
        a++;
        b--;
    }
    /// @notice Assignment Operators (=, +=, -=, *=, /=, %=)
     function example_2() public {
        newValue = a * b + c;
        a = a * b + c;
        b = b * c;
        b *= c;
    }
    /// @notice Comparison Operators (==, != , <, <=, >, >= )
     function example_3() public view {
        bool result = false;
        if(a < b){
            result = true;
        }
        if(a <= b){
            result = true;
        }
        if(a == b){
            result = true;
        }
        if(a != b){
            result = true;
        }
        if(result == myBool){
            result = true;
        }
    }
    /// @notice Logical Operators (!, &&, ||)
     function example_4() public view {
        bool result = false;
        if(a < b && b > c){
            result = true;
        }
        if(a < b || b > c){
            result = true;
        }
        if(a < b && b > c && a > 20){
            result = true;
        }
        if(!myBool){
            result = true;
        }
        result = !result;
    }
    /// @notice Conditional Operator (? A:B)
    function example_5() public view {
        uint8 result;
        result = a < b ? 100 : 50;
    }
}

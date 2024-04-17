 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Error Handler ===> Require Method

/*
Syntax ===> require(condition);
*/

contract Require{
    function checkInput(uint256 _input) public pure returns(string memory) {
        require(_input >= 0, "invalid uint8");
        require(_input <= 255, "invalid uint8");

        return "input is uint8 supported";
    }

     function Odd(uint256 _input) public pure returns(bool){
    require(_input % 2 != 0, "Input must be an odd number");
    return true;  // transaction will only take place if our input is odd number.
    }
}

// By using require error handler we succesfully checked if the input number we provide is uint8 supported or not.






















/*
Notes

pure: Functions that do not read or modify the state. 
They are completely deterministic and cannot modify the state of the contract.
view: Functions that only read the state but do not modify it. 
They are considered free to call by other contracts because they do not change the state.
payable: Functions that can receive Ether along with their execution. 
They might modify the state.
(default): Functions that can modify the state but do not accept Ether.
 This is the default state mutability if none is specified.

*/

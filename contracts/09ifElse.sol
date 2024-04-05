 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// If, Else
// basic if and else function to check wheter the value/number we provide as in put is equal to 5 or not. 

contract ifElse {
    string public myString;

    /*function get(uint256 _num) public returns (string memory) {
        if (_num == 5) {
            myString = "Hey, the value of num is 5";
        } else {
            myString = "Hey, the value of num is not 5";
        }

        return myString;
    } */

    function shortHand(uint256 _num) public returns(string memory){
        return _num == 5 ?  myString = "value is 5" : myString = "value is not 5";
//                                         ^^               ^^
//                                         ||               ||
       // if==================================   else =========
    }
} 

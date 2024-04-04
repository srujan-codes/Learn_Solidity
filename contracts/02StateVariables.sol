 /*
 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// In Solidity we have to define data type explicitly


contract StateVariables{
    // State Variables
    /* 
       In Solidity, a state variable is a piece of data stored permanently on the blockchain within a smart contract. 
       It holds information that persists across different function calls and transactions. 
       State variables define the current state of the contract and can be accessed or modified by various functions 
       within the contract. They represent the essential data that the contract manages and maintains throughout
        its lifecycle.    
    */
/*
    string public myState;
    string public myNum;
    /*

    string public defaultText = "Hey Default Text";
    uint256 public defaultNum = 5;

    // State Variable will always come on top.

    bytes public defaultByte = "Hey Default Byte";  
    bytes public defaultBytesNo;  

    uint256[] public  myNumber; // [] is an array   
*/
/*
   constructor(string memory _text, uint256 _no) {
        myState = _text;
        myNum = _no;
    }
}

*/


pragma solidity ^0.8.0;

contract StateVariables {
    // State Variables
    string public myState;
    uint256 public myNum;

    constructor(string memory _text, uint256 _no) {
        myState = _text;
        // We need to convert uint256 to string before assignment
        myNum = _no;
    }
}

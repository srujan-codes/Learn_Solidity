// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Local Variables ==> Variables defined inside a function

contract LocalVariables{
    uint256 public myNumber;

    // Function for local variable

    function local() public  returns(address, uint256, uint256) {


        // variables defined inside function scope
        // these variables are not stored on the blockchain.
        // Only be executed when the function gets called.
        // Stored locally in a memory.

        uint256 i = 122;   // here we got local variable as 122
        myNumber = i;   // we assigned local variable to a state variable.
        i += 45;
        address myAddress = address(1);  
        return (myAddress, myNumber, i) ;


    }

    // we sucessfully got data on the local variables and performed addition operation successfully.
}
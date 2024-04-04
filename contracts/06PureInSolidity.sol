// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Pure

contract Pure {
    uint256 num1 = 4;
    uint256 num2 = 10;

    function getData() public pure   returns(uint256, uint256){

        uint256 myNum1 = 30;
        uint256 myNum2 = 50;
        return(myNum1,myNum2);    // pure is completely restricted to the local variable. whereas view will allow to access both state and local variables.
        

    }

}
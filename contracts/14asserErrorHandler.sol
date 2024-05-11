// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Assert Error Handler
 // syntax ==>  assert(condition);


contract assertStatement{
    bool public result;

    function checkOverFlow(uint256 _num1, uint256 _num2) public{
        uint256 sum = _num1 + _num2;
        assert(sum <= 255);
        result = true;
    }

    function geResult() public view returns(string memory){
        if(result == true){
            return "No OverFlow";
        }else{
            return "Overflow exixts";
        }
    }
}

/*
We Should always compare all the available variables and choose the one with lower gas cost for efficient functioning of code.
returned true because sum is less than 255 we provided 12 and 33

In Require Error Handler, we will use both condition and message, but in Assert Error Handler we will only use condition no message.
This is a key difference

*/
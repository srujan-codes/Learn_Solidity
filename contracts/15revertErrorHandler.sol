// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Syntax ==> revert();

contract revertStatement{
    // @dev - This is a simple function to return an error message if the address passed to the function is not the contract owner
   function getError() public pure returns(string memory){
       return "This is not the contract owner";
   }
   
 function checkOverFlow(uint256 _num1, uint256 _num2) public pure returns(string memory, uint256){
    uint256 sum = _num1 + _num2;
    if (sum < 0 || sum > 255) {
        revert("overflow exists");
    } else {
        return ("No overflow", sum);
    }
}
}

// Revert is the least used keyword or least used error handler.
// in revert we dont look for any condition, we directly pass the error message.
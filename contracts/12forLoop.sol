 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// For Loop
/* Syntax
for (init; condition; increment) 
{
    code
};

very high amount of gas is consumed in the form of execution cost.
*/

contract forLoop{
    uint256[] data;

    function loop() public returns(uint256[] memory){
        for(uint256 i=0; i < 5; i++){
            data.push(i);
        }
        return data; // output ==>  "uint256[]: 0,1,2,3,4
    }
}

// Always try to avoid loops in smart contract as it exhausts a lot of gas, thus higher execution cost.
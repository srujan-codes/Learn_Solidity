 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// While Loop
/*  Syntax

while (condition) 
{
    code
};
loops consume a lot of gas
*/


contract whileLoop{
    uint256[] data;
    uint8 k = 0;

    function loop() public returns(uint256[] memory){
        while(k < 5){
            k++;
            data.push(k);
        }
        return data;
        // returned ==> uint256[]: 1,2,3,4,5
    }
}



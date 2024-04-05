 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Do While Loop
/*  
 Syntax 
 do {
    code
} 
while (condition); 
*/



contract doWhile {
    uint256[] data; // Array to store the data
    uint8 k = 0;    // Counter variable

    function loop() public returns (uint256[] memory) {
        do {
            data.push(k);    // Add the current value of counter to the array
            k++;             // Increment the counter
        } while (k < 5);     // Continue the loop as long as the counter is less than 5

        return data;        // Return the array containing the values
    }
}


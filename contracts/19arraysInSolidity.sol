// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// We have 2 types of arrays:
// 1. Compile-time fixed-size array
// 2. Dynamic-sized array

contract Array {
    // Several ways to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    
    // Fixed-size array, all elements initialize to 0
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // Solidity can return the entire array, but it should be avoided for arrays that can grow indefinitely in length.
    // We also need to optimize gas fees.
    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        // Append/add to array
        // This will increase array length by 1
        arr.push(i);
    }

    function pop() public {
        // Remove last element from array
        // This will decrease array length by 1
        arr.pop();
    }

    function getLength() public view returns (uint) {
        // Use `arr.length` instead of `arr.length()` 
        return arr.length;
    }

    function remove(uint index) public {
        // `delete` doesn't change the array length
        // It resets the value at the index to its default value (in this case, 0)
        delete arr[index];
    }

   /* function examples() external  {
        // Create an array in memory, only fixed-size arrays can be created in memory.
        uint[] memory a = new uint[](5) ;
    } */
}

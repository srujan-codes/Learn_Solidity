// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataTypes {
    // Boolean Data Type ==> bool is the syntax to declare.
    bool public hey; // default value of boolean is always false 
    bool public no = true; // defining boolean value to be true 

    /* UINT Data Type ==> uint or uint8,uint16........uint256 is the syntax to declare
       UINt stands for unsigned integer meaning ==> no negative integers, only positive integers */
      // uint8 public eightbitinteger; // ranges from 0 - (2^8 - 1) = 255
      // uint16 public sixteenbitinteger;// ranges from 0 - (2^16 - 1) = 65535
       // we have to define explicitly about the data variables which will help us in saving gas fees when we deploy the smart contract.

       uint8 public u8 = 1;
       uint public u256 = 456; // if we dont mention anything after uint, by default it will take uint256.
       uint public u = 123;   
       // we were successfully able to deploy 

       /* Negative Number 
          we can declare negative numbers using "int" data type */

          //int256 ranges from -2^255 to (2^255 - 1)
          //int128 ranges from -2^127 to (2^127 - 1)

          int8 public i8 = -1; // variable names cannot start with a number uint8 public 88 is not possible
          int public i256 = 456;
          int public i = -1234; // deployed successfully

          // Min and Max value of int or a number
          int public minInt = type(int).min;   // we use this so that we can prevent overflow and underflow condition and this way we can find max and min.
          int public maxInt = type(int).max;   // we deployed and got max and min number

          // Array
          // In Solidity, the data types byte represent a sequence of bytes, there are 2 types of bytes and bytes is more gas efficient.
          // we can take array as a byte or a string or a number.
          
          //-----> fixed-sized bytes arrays
          //-----> dynamically sized bytes arrays.
          // when we define a byte in smart contract it represents dynamic bytes array.

          //bytes1 public a; // we got 0:bytes1: 0x00
          //bytes1 public b; // we got 0:bytes1: 0x00

          bytes1 public a = 0xb5; // we got 0:bytes1: 0xb5
          bytes1 public b = 0x56; // we got 0:bytes1: 0x56
          // bytes is more memory and gas efficient than compared to string.

          // Address Data Type
          address public demo; // we got 0:address: 0x0000000000000000000000000000000000000000 ==> this is default address.
          address public addr = 0x5678900000000000000000000000000000000000; // after deploying, we got the same address we gave


          // Default Values of Data Types

          bool public defaultBool; // false
          uint public number; // 0
          int public defaultInt; // 0
          address public defaultAddress; // 0:address: 0x0000000000000000000000000000000000000000

          // In solidity, there is no concept of null or undefined.



    



    
          



    

}

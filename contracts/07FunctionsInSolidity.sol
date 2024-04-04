// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* A function is a group of code that can be reused anywhere in the program,
 which generally saves the excessive use of memory and decreases the run time of a program.
 Creating a function reduces the need of writing the same code over and over again.
 With the help of functions, a program can be divided into many small pieces of code for better readability and understanding. */

 // Types of Functions in Solidity ===> Declarative Functions
 //                                ||=> Non Declarative Function

// function name(params) {
  //  code                          code snippet
 // } 

 contract LearnFunction {
    //uint256 public hey;
    uint256  hey;

    // get data with the help of function
    function getInfo() public view returns(uint256) {
        return hey;
    }

   /* function updateData(uint256 _hey) public{
        hey = _hey;   // data is getting updated successfully.
    }*/

    // Function to add 2 numbers

    function get(uint256 _a, uint256 _b) public  pure   returns(uint){
        //view keyword is not available when we have to change the state variable.
        uint256 newNumber = _a + _b;
        return newNumber;    // we have successfully deployed and the addition operation is working
    }


    
    
 }

 

    // ABI os our contract ABI  ====> Application Binary Interface

/*
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_hey",
				"type": "uint256"
			}
		],
		"name": "updateData",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_a",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "_b",
				"type": "uint256"
			}
		],
		"name": "get",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "pure",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "getInfo",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	}
*/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Constructor in Solidity

// Base Contact X

contract X {
    string public name;

      constructor(string memory _name) {
        name = _name;
      }
    
}

// Base Contract Y

contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
    
}

// There are 2 ways to initialise parent contract with the parameters.

// 1 ==> Pass the parameters here in the inheritance list

contract B is X("Input to X"), Y("Input to Y") {

}
// 2 ==> Pass parameters in the constructor
contract C is X,Y {
    //similar to function modifiers
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}

    // here the order is very important we have to follow the same order in which we created
    }
 // Parent constructors are always called in the order of inheritance
//  Regardless of the order of parent contracts listed in the constructor of the child contract

// Order of Constructors called
// 1. X
// 2. Y
// 3. D

contract D is X, Y {
    constructor() X("X was called") Y("Y was called") {}
}

// order of constructors called:
//1.X
//2.Y
//3.E

contract E is X, Y {
    constructor() Y("Y was called") X("X was called") {}
}

// We are continuosly using these contracts to update the data.
// hence we can update value of the smart contract during deployment
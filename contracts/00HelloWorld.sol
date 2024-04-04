// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloWorld {
    string greetings;

    constructor() { // constructor runs only once when we deploy the app
        greetings = "Hello All !";
    }

    function sayHello() public view returns (string memory){
        return greetings;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Function modifier

// Notes
/* 
Modifiers are code that can be run before and after function calls 
These Modifiers are generally used for 3 reasons
1) To restrict access
2) To validate inputs
3) To guard against reentrancy hacks
*/

contract FunctionModifier {

    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not Owner");
        _; // if statement is true then it will execute other function
    }

    modifier validateData(address _addr) {
        require(_addr != address(0), "Not valid address");
        _; // this is used to continue the function
    }

    function changeOwner(address _newOwner) public onlyOwner validateData(_newOwner) {
        // it will change ownership of the contract so only owner of the smart contract can call the function.
        owner = _newOwner;
    }

    modifier noReentrancy(){
        require(!locked, "No Reentrancy");
        locked = true;
        _;
        locked = false;
    
    }

    // we can use this modifier as an abstraction. 
    // it will save us from many bugs and saves a lot of time.

    function decrement(uint256 i) public noReentrancy{
        x -= 1;

        if(i>1){
            decrement(i - 1);
        
        }
    }
}

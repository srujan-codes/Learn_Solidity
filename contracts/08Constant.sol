 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Constants in Solidity
// Constants consume less gas fess so we have to use them whenever necessary to save on gas.

contract Const{
    address public my_Add = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // we got our execution cost ==> 70063 gas.

     // address public constant my_Add = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
     // after declaring constant, our execution cost is way low now  ===> 45697 gas

     function getConst() public view returns(address){
        return my_Add;
     }


}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Global Variables

 /*    contract GlobalVariables{

    address public owner;
    address public myBlockHash;
    uint256 public difficulty;
    uint256 public gasLimit;
    uint256 public number;
    uint256 public timeStamp;
    uint256 public value;
    uint256 public origin;
    uint256 public gasPrice;
    bytes public callData;
    bytes4 public firstFour;
   


    constructor(){
        owner = msg.sender;  // we got address used to deploy the contract
        //  0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
        // 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
        // we got same accounts, hence verified the sender.
        myBlockHash = block.coinbase; // is a global variable representing the address of the miner who successfully mined the current block.
        difficulty = block.difficulty;
        gasLimit = block.gaslimit;
        number = block.number;
        timeStamp = block.timestamp;
        value = msg.value;
        origin = tx.origin;
        gasPrice = tx.gasprice;
        callData = msg.data;
        firstFour = msg.sig;
    }


   
}  */

 pragma solidity ^0.8.0;

contract MyContract {
    address public owner;
    address public myBlockHash;
    uint256 public prevRandao; // variable for randomness
    uint256 public gasLimit;
    uint256 public number;
    uint256 public timeStamp;
    uint256 public value;
    address public origin;
    uint256 public gasPrice;
    bytes public callData;
    bytes4 public firstFour;

    constructor() payable {
        owner = msg.sender;  
        myBlockHash = block.coinbase;
       // prevRandao = block.prevrandao; // using block.prevrandao for randomness
        gasLimit = block.gaslimit;
        number = block.number;
        timeStamp = block.timestamp;
        value = msg.value;
        origin = tx.origin;
        gasPrice = tx.gasprice;
        callData = msg.data;
        firstFour = msg.sig;
    }
}

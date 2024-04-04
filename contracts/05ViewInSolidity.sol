// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// VIEW
contract View {

    uint256 public num1 = 2;
    uint256 public num2 = 7;

    // Using View to check the State Variable
    function getResults() public view returns(uint256, uint256){
        return (num1, num2); // We return the state variables.
    }

    // to Calculate product and total
    function calculateResults() public view returns(uint256 product, uint256 total) {
        product = num1 * num2;
        total = num1 + num2;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping {
    // Mapping from address to uint
    mapping(address => uint) public myMap;

    // This myMap will contain all addresses data; we can identify which user we want from the large basket of data.
    function get(address _addr) public view returns (uint) {
        // Mapping always returns a value.
        // If the value was never set, it will return the default value of a number/address/boolean, etc.
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        // Update the value at this address.
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // Reset value to default value.
        delete myMap[_addr];
    }
}

contract NestedMapping {
    // Nested mapping: mapping from an address to another mapping.
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr1, uint _i) public view returns (bool) {
        // You can get values from a nested mapping even when it is not initialized.
        return nested[_addr1][_i];
        // We are checking true or false if the address provided by us is there or not.
    }

    function set(address _addr1, uint _i, bool _boo) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1, uint _i) public {
        delete nested[_addr1][_i];
    }
}
 
 // finally we are able to add and remove data and also assign ids
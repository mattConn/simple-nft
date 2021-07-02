// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SimpleStorage {
    uint storedData;

    function set(uint x) public returns (string memory){
        storedData = x;
        return 'set int';
    }

    function get() public view returns (uint) {
        return storedData;
    }
}
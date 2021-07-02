// SPDX-License-Identifier: Apache-2.0

pragma solidity ^0.8.4;

contract SimpleNFT {
    address creator;
    address owner;
    string URL;

    constructor(){
        creator = msg.sender;
    }

    function transfer(address newOwner) public {
        require(msg.sender == owner);
        owner = newOwner;
    }

    // getters
    function getCreator() public view returns (address){
        return creator;
    }
    function getOwner() public view returns (address){
        return owner;
    }
    function getURL() public view returns (string memory ){
        return URL;
    }
}
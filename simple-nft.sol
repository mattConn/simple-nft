// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SimpleNFT {
    address creator;
    address owner;
    string URL;

    constructor(){
        creator = msg.sender;
        owner = msg.sender;
        URL = "https://twitter.com/mattconndev/status/1357602250328338433";
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
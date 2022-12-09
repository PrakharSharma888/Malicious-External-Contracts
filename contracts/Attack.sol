//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Attack{
    mapping(address => bool) userEligible;
    address owner;

    constructor(){
        owner = msg.sender;
    }

    function isUserEligible(address user) public view returns(bool){
        if(user == owner){
            return true;
        }
        return false;
    }

    function addUserToList(address user) public {
        userEligible[user] = true;
    }

    fallback() external {}
}
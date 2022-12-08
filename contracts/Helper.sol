//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Helper{
    mapping(address => bool) userEligible;

    function isUserEligible(address user) view public returns(bool){
        return userEligible[user];
    }

    function addUserToList(address user) public {
        userEligible[user] = true;
    }

    fallback() external {}
}
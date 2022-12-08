//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Attack{
    mapping(address => bool) userEligible;
    address owner;

    constructor(){
        owner = msg.sender;
    }

    function 
}
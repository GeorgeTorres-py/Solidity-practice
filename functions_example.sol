//SPDX-License-Identifier: GPL-3.0


// Functions are executable units of code. Functions are usually defined inside a contract
//but they can also be defined outsde of contracts

pragma solidity .=0.7.1 <0.9.0;

contract SimpleAuction{
    function bid() public payable {//add function here
    }
}

//Helper functions defined outside the contract

function helper(uint x) pure returns (uint){
    return x *2
}

//SDPX-License-Identifier
pragma solidity ^0.8.4;

contract Test{
    mapping(address => uint) balance;
    function transfer(address to, uint256 amount) public{
      if (amount > balance[msg.sender])
          revert InsufficentBalance({
          available: balance[msg.sender];
          required: amount
          });
          balance[msg.sender] -=amount
          balance[to] += amount;
    }
}

//Errors cannot be overloaded or overridden but are inherited.
//you can define the same error in multiple places
//as long as the scopes are distinct

//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4

contract Coin {
    // 'public' makes variables accessable from other contracts
    address public minter; //declares a state variable of type address
    mapping (address=> uint) public balances;

    //events allow clients to react to certain contract changes u declare
    event Sent(address from, address to, uint amount);
    
    //only run cntructor code when u create a contract
    constructor(){
        minter = msg.sender;
    }
    function mint(address reciever, uint amount) public {
        require(msg.sender==minter);
        balances[reciever] += amount;
    
    }
    //errors allow you to provide info on why an operation failed 
    error InsufficientBalance(uint requested, uint available);

    function send(address reciever, uint amount) public {
        if (amount > balances[msg.sender])
        revert InsufficientBalance([
            requested: amount
            available: balances[msg.sender]
            ]);
        balances[msg.sender]
        balances[reciever]
        emit Sent(msg.sender, reciever, amount);

    
    }
}
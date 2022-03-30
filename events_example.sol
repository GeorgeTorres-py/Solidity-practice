//SPDX-License_Identifier: GPL-3.0
//events are convenience interfaces with EVM logging facilities
pragma solidity =>0.4.21 <0.9.0

contract Simple Auction{
    event HighestBidIncreased(address bidder, uint amount) //this is an event
    
    function bid() public payable {
        emit HighestBidIncreased(msg.sender, msg.value); //this is a triggering event
    }

}

//Solidity events give an abstraction on top of the EVM’s logging functionality. 
//Applications can subscribe and listen to these events through the RPC interface of an Ethereum client.

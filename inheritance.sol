//Solidity-Identefier-License: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Owned{
    constructor() { owner = payable(msg.sender);}
    address payable owner;
}



//Using 'is' derives from anohter contract
//derived contracts can accress all non-private members

contract Destructible is Owned {
    function destroy() virtual public { //'virtual' means the function can change
        if  (msg.sender == owner) selfdestruct(owner);
    }
}

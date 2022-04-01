//Solidity-Identifier-License GPL-3.0


//Enums are one way to create 
//a user-defined type in Solidity

//Using type(NameOfEnum).min and type(NameOfEnum).max 
//you can get the smallest and respectively 
//largest value of the given enum.

pragma solidity >=0.4.0 <0.9.0;


contract Purchase {
    enum State { Created, Locked, Inactive}

}





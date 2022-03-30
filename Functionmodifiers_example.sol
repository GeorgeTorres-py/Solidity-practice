//SPDX-License-Identifier: GPL 3,0

//Function Modifiers
//Function Modifiers can be used to amend the semantics of functions in a declarative way
//overloading, or having the same modifier name with different parameters is not possible

pragma solidity >=0.4.22 <0.9.0

contract Purchase{
    address public seller;
    
    modifier onlySeller(){//modifier
    require(
        msg.sender == seller
        //only seller can call this
    );
    }
    
    function abort() public niew onlySeller {
    //modifer usage
    }
}

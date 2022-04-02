//Structs are custom defined types that can group several variables
pragma solidity >=0.4.0 <0.9.0;

contract Ballot
    struck Voter {
      uint weight;
      bool voted;
      address delegated;
      uint vote;
    }
}


//Solidity provides a way to define new types in the form of structs, 
//which is shown in the following example


pragma solidity >-0.6.0 <0.9.0;

//declaring a strct outside of a contract 
//allows it to be shared by multiple contracts

struct Funder {
    address addr;
    uint amount;
    
}

//defining stucts within a contract makes them more visible only within the contract 
// and in derived contracts

contract Crowdfunding{
    stuct Campaign{
        address payable beneficiary
        uint fundingGoal;
        uint numFunders
        uint amount;
        
        //think of mapping as a hash table, which are virtually initialized 
        //such, that every possible key exists 
        //and is mapped to a value whose byte-representation is all zeros, a type’s default value
        mapping (uint => Funder) funders; 
    }
}


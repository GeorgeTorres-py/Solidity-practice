
//The compiler automatically creates getter 
//functions for all public state variables


//here the compiler generates a 
//function called data that takes no arguements
//then returns the uint value from the state variable
pragma solidity >= 0.4.8 <0.9.0;

contract C {
    uint public data = 42;
}


Conteact Caller {
    C c = new C();
    
    function f() public view returns (uint){
        return c.data()
     }
}

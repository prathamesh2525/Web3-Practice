// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract State{
    //There are 3 ways to assign value to a state variable
    //1
    uint public age=10; //state variable : get stored directly on blockchain
    //2
    constructor() public{
        age=10;
    }   // Using constructor 
    // A constructor code is executed once when a contract is created and it is used to initialize contract state.
    //3
    function setAge() public {
        age=10;
    } // using setter function
    //A function is a group of reusable code which can be called anywhere in your program.
}

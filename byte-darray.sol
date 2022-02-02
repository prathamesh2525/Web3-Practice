// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0< 0.9.0;

contract Darray{
    bytes public a1 = "abc";

    function pushElement()public{
        a1.push('x');
    }

    function getElement(uint index)public view returns(bytes1){
        return a1[index];
    }

    function getLength() public view returns(uint){
        return a1.length;
    }
}

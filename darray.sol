// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0< 0.9.0;

contract Darray{
    uint[] public  a;
    function pushElement(uint item)public {
        a.push(item);
    }

    function length()public view returns(uint){
        return a.length;
    }

    function popElement()public{
        a.pop();
    }
}

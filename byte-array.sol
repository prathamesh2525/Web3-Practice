// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0< 0.9.0;

contract byteArray{
    bytes3 public a1;
    bytes2 public a2;

    function setter()public{
        a1 = 'abc';
        a2 = 'yz';
    }
}

// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0< 0.9.0;

contract pay{
    address payable user = payable(0x17F6AD8Ef982297579C203069C1DbfFE4348c372);
    function payEther()public payable{

    }
    function sendEther()public{
        user.transfer(1 ether);
    }
    function getBalance()public view returns(uint){
        return address(this).balance;
    }
}

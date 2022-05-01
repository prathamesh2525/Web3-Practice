// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

interface ICO{
    function setName(string memory _name) external;
    function getName() external view returns(string memory);
}

contract Access{
    function callSetName() public{
        ICO(0xd9145CCE52D386f254917e481eB44e9943F39138).setName("Prathamesh");
    }
    function callGetName() public view returns(string memory){
        return ICO(0xd9145CCE52D386f254917e481eB44e9943F39138).getName();
    }
}

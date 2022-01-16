pragma solidity >=0.5.0 <0.9.0;


contract simpleStorage {
    uint storeData;
    string name;

    function set(uint x) public {
        storeData = x * 5;
    }

    function get() public view returns(uint) {
        return storeData;
    }

}

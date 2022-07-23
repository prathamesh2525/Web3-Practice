// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Locker {
    address payable public owner;
    mapping(address => uint) public balances;

    // contructor to initialize
    constructor() {
        owner = payable(msg.sender);
    }

    // Events to Log the output
    event LogDeposit(address indexed sender, uint amount, string message);
    event LogWithdraw(address indexed sender, uint amount, string message);

    // Deposit function
    function deposit(uint _amount) public payable {
        balances[msg.sender] += _amount;
        emit LogDeposit(msg.sender, _amount, "Desposited");
    }

    // Withdraw function
    function withdraw(uint _withdrawAmount) public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(
            _withdrawAmount < balances[msg.sender],
            "Amount should be less than available balance"
        );
        balances[msg.sender] -= _withdrawAmount;
        (bool sent, ) = payable(msg.sender).call{value: _withdrawAmount}("");
        if (sent) {
            emit LogWithdraw(msg.sender, _withdrawAmount, "Ether Withdrawn");
        } else {
            emit LogWithdraw(
                msg.sender,
                _withdrawAmount,
                "Failed to withdraw Ether"
            );
        }
    }

    // Check balance
    function balance() public view returns (uint) {
        return balances[msg.sender];
    }
}

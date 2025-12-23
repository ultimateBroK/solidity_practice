// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleWallet {
    uint private balance;

    function deposit(uint amount) public {
        balance += amount;
    }

    function withdraw(uint amount) public {
        require(balance >= amount, unicode"Số dư không đủ để rút");
        balance -= amount;
    }

    function getBalance() public view returns (uint) {
        return balance;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SolidityTest {
    uint storedData;

    constructor() {
        storedData = 10;
    }

    function getResult() public view returns(uint) {
        return storedData;
    }
}
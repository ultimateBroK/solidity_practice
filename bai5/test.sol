// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter {
    uint private count;

    function increment() public {
        count += 1;
    }

    function decrement() public {
        require(count > 0, unicode"Không thể giảm dưới 0");
        count -= 1;
    }

    function getCount() public view returns (uint) {
        return count;
    }
}
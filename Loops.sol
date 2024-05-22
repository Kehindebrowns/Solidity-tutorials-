// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LoopExample {
    // Function to sum numbers from 1 to n
    function sum(uint256 n) public pure returns (uint256) {
        uint256 result = 0;
        
        // Loop from 1 to n
        for (uint256 i = 1; i <= n; i++) {
            result += i;
        }
        
        return result;
    }
}

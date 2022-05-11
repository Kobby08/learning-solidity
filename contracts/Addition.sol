// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 

contract MyFirstContract {
    uint256 a;
    uint256 b;

    // a function to return the addition of two state variables
    function add() external view returns(uint256) {
        return a + b; 
    }
}
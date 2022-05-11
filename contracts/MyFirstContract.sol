// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 

contract MyFirstContract {
    function greet() external pure returns(string memory) {
        return "Hello Solidity!";
    }
}

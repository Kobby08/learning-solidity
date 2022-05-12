// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 

interface InterfaceB {
    function greet() external pure returns(string memory);
    function foo() external;
}

contract ContractB{
    function greet() external pure returns(string memory){
        return "Hello Solidity!";
    }

    function foo() external {

    }
}

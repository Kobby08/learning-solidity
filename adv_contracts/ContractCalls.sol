// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 
//1.call function of another smart contract
//2.import keyword
//3.contract interface
//4.error propagation

contract ContractA {
    //1.call function of another smart contract: used to call contracts located in the same file
    
    //Steps:
    // a. set address for the other contract
    // b. interface with the contract

    address addressB;
    
    function setAddressB(address _addressB) external {
        addressB = _addressB;
    }

    function callgreet() external view returns(string memory) {
        ContractB user = ContractB(addressB);
        return user.greet();
    }

}


contract ContractB{
    function greet() external pure returns(string memory){
        return "Hello Solidity!";
    }
}




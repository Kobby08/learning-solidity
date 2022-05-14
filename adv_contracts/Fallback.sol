//SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;
//1.Use case 1: receive ether
//2.Use case 2: fallback
//declare fallback function
//difference with regular function
//sending data
//sending ether
//gas stipend
//rejecting incoming calls
// Example 1: call func that does not exist
// Example 2: send ether from another address to our contract ie; Fallback contract
// Example 3: send ether from smart contract to our contract ie; Fallback contract



contract Fallback {
    fallback() external payable {
        msg.data; // sending data to a fallback fxn; we use an assembly to parse this data since its in bytes
    }

    function balance() public view returns(uint){
        return address(this).balance;
    }
}

contract B {
    function receiveEther() external payable {

    }

    function sendEther(address payable _a) public {
        _a.transfer(1000 wei);
    }

    function balance() public view returns(uint){
        return address(this).balance;
    }

    function notAvaiable() external{
        Fallback b = new Fallback();
        InterfaceB(address(b)).doesNotExists(); // this will raise an error hence the fallack in the Fallback Contract wil execute
    }
}

interface InterfaceB {
    function doesNotExists() external;
}


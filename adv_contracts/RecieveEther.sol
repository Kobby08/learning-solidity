// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 

contract ReceiveEther {
// A program to allow a smart contract to receive ether.

    // A payable function enables this current smart contract to receive ether.
    function send() external payable {
        if (msg.value < 1000){
            revert();
        }
        
    }

    function balanceOfContract() external view returns(uint){
        return address(this).balance;
    }
}




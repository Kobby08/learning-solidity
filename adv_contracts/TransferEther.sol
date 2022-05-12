// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 

contract TransferEther {
// A program to allow a smart contract to transfer or send ether 
//to other smart contracts or other account.

//1.transfer
//2.address vs address payable
//3.address payable casting (address or uint160)
//4.msg.sender
//transfer vs send methods
    
    address payable[] recipients; 
    
    function sendEther(address payable recipient) external {
        // transfering 1000 wei from this smart contract to a recipient.
        recipient.transfer(1000 wei); // address payable type is used to transfer ether to a recipient and not address type.

        // the transfer or send method is only avaiable on the address payable type.
        address a;
        a.transfer(100 wei); // this will throw an error

        // the send method is the same as the transfer method but 
        // when there is an error, it resolves to false and when it 
        // is successful it resolves to true.
    }

}




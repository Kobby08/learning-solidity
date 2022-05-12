// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 

contract Events {
    event NewTrade(uint date, address from, address to, uint amount);

    function trade(address _from, uint _amount) external {
        emit NewTrade(block.timestamp, _from, msg.sender, _amount);
    }
}




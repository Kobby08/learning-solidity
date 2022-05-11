// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 

contract MyContract{
    uint value;

    function getValue() external view returns(uint){
        return value;
    }

    function setVaue(uint _value) external {
        value = _value;
    }
}

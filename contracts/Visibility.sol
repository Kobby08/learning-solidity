// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 

contract Visibility{
    uint value;
    string username;


    function getValue() public view returns(uint){
        return value;
    }

    function setValue(uint _value) external {
        value = _value;
    }

    function _foo() internal view returns(uint){
        uint result = value * 2;
        return result;
    }

    function _bar(string memory _name) private {
        username = _name;
    }
}

// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 

contract Enum{
//1.Declare enum
//2.Use enum
//3.Accept enum as argument


    //1.Declare enum
    enum STATE {ACTIVE, PENDING, INACTIVE}
    STATE status;
    string showStatus;
    
    function setStatus(STATE _state) external {
        status = _state;
    }
    
    function foo() external view returns(string memory){
        if (status == STATE.ACTIVE){
            return  "This status is active";
        } else {
            return "This status is inactive";
        }
    }

    function bar(STATE  _status) external pure returns(string memory){
        // solidity recieves enum type args as integers
        if (_status == STATE.ACTIVE) {
            return "You are logged in";
        }else if (_status == STATE.INACTIVE){
            return "You are logged out";
        }
        return "You are in waiting queue";
    }
}




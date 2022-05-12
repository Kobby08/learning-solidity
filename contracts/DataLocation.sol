// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 

contract DataLocation {
// Data locations:
//1.storage
//2.memory
//3.stack
//4.calldata

    //1.storage
    uint a; // implict 

    //explict
    struct User {string name;}
    User[] users;
    // want to point to a particular user in the array
    function foo() external view {
        User storage user = users[0];
        user.name;
        bar(user); // user is passed to the bar fxn.
    }

    //2.memory
    function bar(User memory _user) internal pure returns(uint) {
        //3.stack
        uint b;
        _user.name = "John Doe"; // data is lost after fxn executes.
        return b * 2;
    }
  
    //4.calldata
    function fooBar(User[] calldata _users) external {
        // do something ..
    }
}




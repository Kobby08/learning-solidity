// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 

contract MyContract{
    address owner = msg.sender;

    // if-esle statement
    function foo() external {
       if (msg.sender == owner && block.timestamp > 3 weeks) {
           // do something here...
       } else {
           // end whole process..
       }
    }

    // for loop
    function bar() public {
        for (uint i = 0; i < 10; i ++) {
            // do something..
        }
    }

    // while loop
    function foobar() private view returns(uint){
        while(true) {
            // run some code ..
            if (// some condition) {
                break; // we can also call continue keyword
            }
        }
    }
}

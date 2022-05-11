// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 

//1.storage array
//2.memory array
//3.array args and retuns arrays from function  

contract MyContract {
    uint[] MyArray; //crud, create, read, update, destroy 
    
    //1.storage array
    function foo() external {
        // create
        MyArray.push(2);
        MyArray.push(4);

        // read
        MyArray[0];
        MyArray[1];

        // update
        MyArray[0] = 4;

        // destroy
        delete MyArray[1]; //=> 0 

        // iterate an array
        for (uint i = 0; i < MyArray.length; i++) {
            MyArray[i];
        }
    }

    //2.memory array
    function bar() pure external {
        uint[] memory newArray = new uint[](20); 

        // create
        newArray[0] = 15;

        // read 
        newArray[0];

        // update
        newArray[0] = 35;

        // destroy
        delete newArray[0];
    }

    //3.array args and retuns arrays from function  
    function fooBar(uint[] memory _myArray) pure internal returns(uint[] memory) {
        // do something here..
    }
}

//SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
    address admin;

    constructor() {
        admin = msg.sender;
        foo();
    }

    function foo() public view returns(uint){
        return admin.balance;
    }
}




// calling parent constructors
// contract ParentContract {
//     uint a;
//     constructor(uint _a) {
//         a = _a;
//     }
// }

// contract MyContract is ParentContract {
//     address admin;

//     constructor(uint _a) ParentContract(_a){
//         // it can be empty
//     }
// }
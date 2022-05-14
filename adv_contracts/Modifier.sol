//SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;
//1.create modifier
//2.pass arguments
//3.chaining modifier
//4.example for access control


contract Modifiers {
    function foo(uint b) external myModifier(b) {
        // some code
    }

    // no need to specify visbility: modifiers are always internal.
    // runs before the fxn its attached to executes
    modifier myModifier(uint a) {
        require(a == 10, "you are not 10.");
        // some other code
        _; // this notation indicates that the fxn the modifier is attached to, will run here...
    }
}


// // chaining modifier

// contract ModifierChaining {
//     function foo(uint b) external myModifier1(b) myModifier2(b) {
//         // some code
//     }

//     // this modifier runs first
//     modifier myModifier1(uint a) {
//         require(a == 10, "you are not 10.");
//         // some other code
//         _; // runs code in myModifier2()
//     }

//       modifier myModifier2(uint a) {
//         require(a == 10, "you are not 10.");
//         // some other code
//         _; // runs code in foo()
//     }
// }


// // access control example

// contract AccessControl {
//     address admin;
//     function withdraw() external onlyAdmin() {
//         // some code
//     }

//     // this modifier runs first
//     modifier onlyAdmin() {
//         require(admin == msg.sender, "only admin can make this call.");
//         // some other code
//         _; 
//     }
// }


// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0; 

//import keyword allows us to include functions of another contract in another file into our current contract.
import './ContractB.sol'; 

contract ContractA {
    address addressB;
    
    function setAddressB(address _addressB) external {
        addressB = _addressB;
    }

    function callgreet() external view returns(string memory) {
        InterfaceB user = InterfaceB(addressB);
        return user.greet();
    }
}



// // ./ContractB.sol

// interface InterfaceB {
//     function greet() external pure returns(string memory);
//     function foo() external;
// }

// contract ContractB{
//     function greet() external pure returns(string memory){
//         return "Hello Solidity!";
//     }

//     function foo() external {

//     }
// }

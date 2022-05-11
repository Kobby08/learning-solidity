// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 

contract VariableTypes {
    // fixed-size types
    bool isAdmin;
    uint a;
    address recipient; // represents address on the Ethereum blockchain [EOA or Contracts Address]
    bytes data; // a general type used to store abritary data such as strings

    // variable-size types
    string name;
    uint[] amounts;
    mapping(uint => string) users;
    bytes _data;

    // user-defined types
    struct User {
        uint id;
        string name;
        uint[] friendIds;
        bool isAdmin;
    }

    enum Status{
        Active, Pending, Inactive
    } // Status.Active or Status.Pending
}

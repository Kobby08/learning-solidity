// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 

contract MyContract {
  //1.declare mapping
  //2.CRUD
  //3.Default values
  //4.Exotic mapping 1: nested mappings
  //5.Exotic mapping 2: arrays inside mapping

    //1.declare mapping
    mapping(address => uint) balances;
    mapping(address => mapping(address => bool)) approved;
    mapping(address => uint[]) scores;

    function foo(address spender) external {
        // 2 - Create
        balances[msg.sender] = 2000;

        // 2 - Read
        balances[msg.sender];

        //2 - Update
        balances[msg.sender] = 1500;

        //2 - Delete
        delete balances[msg.sender];

        //3. Default values
        balances[SomeUnknownKey]; //=> 0

        //4.Exotic mapping 1: nested mappings
        approved[msg.sender][spender] = true; //create ==> {sender: {spender: true}}
        approved[msg.sender][spender]; //read
        approved[msg.sender][spender] = false; //update
        delete approved[msg.sender][spender]; //delete

        //5.Exotic mapping 2: arrays inside mapping
        // create ==> {sender: [25, 30]}
        scores[msg.sender].push(25);
        scores[msg.sender].push(30);
        
        // read
        scores[msg.sender];

        // update
        scores[msg.sender][0] = 45;

        // delete
        delete scores[msg.sender][0]; 
    }
}

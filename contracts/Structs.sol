// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 

contract MyContract {
//1.declare struct
//2.CRUD
//3.array of structs
//4.mapping of structs

    //1.declare struct
    struct User{
        uint id;
        string name;
        address addr;
        uint scores;
    }

    User[] users;
    mapping(address => User) usersList;
    
    function foo(string calldata _name) external {
        // create
        User memory user1 = User(1, _name, msg.sender, 20 ); 
        User memory user2 = User(2, _name, msg.sender, 200 ); 
        User memory user3 = User({name: _name, addr: msg.sender, scores: 500, id: 3}); 

        // read
        user1.name;
        user1.id;

        // update
        user1.name = "John Doe";

        // delete
        delete user1.addr;


        //3.array of structs
        //create
        users.push(user1);
        users.push(User(4, _name, msg.sender, 45));

        //read
        users[0];

        //update
        users[0] = user3;

        //delete
        delete users[1];


        //4.mapping of structs
        //create
        usersList[msg.sender] = user1;

        //read
         usersList[msg.sender];

        // update
        usersList[msg.sender] = user3;

        // delete
        delete usersList[msg.sender];

    }
}




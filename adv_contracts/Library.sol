// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

//simple example with a pure func
//advanced example with a struct
//using..for
//deployed and embedded librairies


library Module {
    function addnum(uint _num1, uint _num2) public pure returns(uint) {
        uint sum = _num1 + _num2;
        return sum;
    }
}

contract MyContract {
    uint a = 5;
    uint b = 10;
    function foo() external view {
        uint result = Module.addnum(a, b);
    }
}


//////////////////// Advance Library: /////////////////////

library MyLibrary {
    struct Player {
        string name;
        uint score;
    }

    function increaseScore(Player storage player, uint points) external {
        player.score += points;
    }
}

contract NewContract {
    using MyLibrary for MyLibrary.Player; // using "library" for "type you want to attach library to"
    mapping(uint => MyLibrary.Player) players;
    function foo() external {
        players[0].increaseScore(100);
    }
}

// Deployed Libraries have all their functions with visibility of public
//Hence once deployed to the EVM, both the library and the smart contract will leave in the different ethereum address hence can be interacted by multiple contracts
// Embedded Libraries have all their functions visibility as internal.
//Hence once deployed to the EVM, both the library and the smart contract will leave in the same ethereum address hence can not be interacted by multiple contracts
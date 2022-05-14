//SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;
//1.what happens when there is an error
//2.throw [deprecated]
//3.revert
//4.require
//5.assert
//6.errors in other contracts


contract Errors {
    uint a;
    function foo() external view {
        revert("used to raise errors");
        //1
        if (a == 10) {
            revert("an error has been raised");
        }
        //2
        require(a != 10, "used with a condition to raise an error");
        // 1 == 2
        
        assert(a != 20); // raise an error when the condition is met
    }

    function willThrowError() external pure {
        assert(2 == 10);
    }

    function willThrowAnotherError() external {
        AnotherContract c = new AnotherContract();
        c.foo();
    }
}

contract AnotherContract {
    function foo() external pure{
        revert("error from the other contract");
    }
}
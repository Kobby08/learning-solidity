//SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;
//1.create child contracts
//2.store child contracts address
//3.cast contract pointer to address
//4.call functions of child contract
//5.caveats of admin


contract LoanFactory {
    Loan[] loans;
    function createLoan() external {
        Loan loan = new Loan(100); // create child contract or create an instance of the loan contract
        loans.push(loan); // store child contract address
        address(loan); //cast loan pointer to address
        loan.reimburse(); // call functions of child contract
    }

    function withdraw(uint i) public {
        loans[i].withdraw();
    }
}

contract Loan {
    uint256 public amount;
    constructor(uint256 _amount) {
        amount = _amount;
    }

    function reimburse() external {
        // some code..
    }

    function withdraw() external {
        // some code..
    }
}
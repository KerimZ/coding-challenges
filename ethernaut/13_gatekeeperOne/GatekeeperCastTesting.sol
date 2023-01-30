pragma solidity ^0.8.0;

contract GatekeeperCastTesting {
    uint32 public b;
    uint16 public d;
    uint64 public a;
    uint160 public c;

    uint32 public aa;
    uint16 public bb;

    uint32 public aaa;
    uint64 public bbb;

    function gateThree(bytes8 gatekey) public returns (bool) {

        a = uint64(gatekey);
        b = uint32(uint64(gatekey));

        c = uint160(msg.sender);
        d = uint16(uint160(msg.sender));

        return b == d;
    }

    function gateTwo(bytes8 gatekey) public returns (bool) {

        aa = uint32(uint64(gatekey));
        bb = uint16(uint64(gatekey));

        return aa == bb;
    }

    function gateOne(bytes8 gatekey) public returns (bool) {

        aaa = uint32(uint64(gatekey));
        bbb = uint64(gatekey);

        return aaa == bbb;
    }

}


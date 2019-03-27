pragma solidity ^0.5.4;

import "ds-test/test.sol";

import "./Dapp.sol";

contract DappTest is DSTest {
    Dapp dapp;

    function setUp() public {
        dapp = new Dapp();
    }

    function test_basic_add() public {
		uint res = dapp.add(1, 100);
		assertEq(res, 101);
    }
}

pragma solidity ^0.5.4;

import "ds-test/test.sol";

import "./Dapp.sol";

contract DappTest is DSTest {
    Dapp dapp;

    function setUp() public {
        dapp = new Dapp();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}

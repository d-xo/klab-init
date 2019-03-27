pragma solidity ^0.5.4;

import "ds-test/test.sol";

import "./KlabInit.sol";

contract KlabInitTest is DSTest {
    KlabInit init;

    function setUp() public {
        init = new KlabInit();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}

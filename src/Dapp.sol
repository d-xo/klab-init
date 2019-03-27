pragma solidity ^0.5.4;

contract Dapp {
	function add(uint x, uint y) public pure returns (uint z) {
		z = x + y;
		require(z >= x);
	}
}

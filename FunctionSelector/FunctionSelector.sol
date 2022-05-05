// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract FunctionSelector {
    /*
    "transfer(address,uint256)"
    0xa9059cbb
    "transferFrom(address,address,uint256)"
    0x23b872dd
    */
    function getSelector(string calldata _func) external pure returns (bytes4) {
        return bytes4(keccak256(bytes(_func)));
    }
		
	// 0x7472616e7366657228616464726573732c75696e7432353629
    bytes public func = "transfer(address,uint256)";
	// 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    bytes32 public kec = keccak256(func);
	// 0xa9059cbb
    bytes4 public by4 = bytes4(kec);
}
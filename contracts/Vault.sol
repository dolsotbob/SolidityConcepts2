// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Vault {
    address public owner;
    uint256 public sentValue;
    uint256 public timestamp;
    uint256 public gasUsed;

    constructor() {
        owner = msg.sender;
    }

    function deposit(uint256 _sentValue, uint256 _timestamp) public {
        require(_sentValue > 0, "Must send some ether");

        sentValue = _sentValue;
        timestamp = _timestamp;
    }

    function getCaller(address _owner) public pure returns (address) {
        return _owner;
    }
}

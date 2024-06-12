// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SimpleToken {
    string public name = "SimpleToken";
    string public symbol = "ST";
    uint8 public decimals = 18;
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    event Transfer(address indexed from, address indexed to, uint256 value);

    constructor(uint256 initialSupply) {
        totalSupply = initialSupply * 10 ** uint256(decimals);
        balanceOf[msg.sender] = totalSupply;
    }
}

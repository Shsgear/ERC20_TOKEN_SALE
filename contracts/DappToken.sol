pragma solidity ^0.5.0;

contract DappToken {
    
    uint256 public totalSupply;
    // constructor
    constructor(uint256 _initalSupply) public{
        totalSupply = _initalSupply;
    }
}
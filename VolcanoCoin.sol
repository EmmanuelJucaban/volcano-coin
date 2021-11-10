// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract VolcanoCoin {
  address owner;
  uint totalSupply = 10000;


  event SupplyIncrease(uint);


  constructor() {
    owner = msg.sender;
  }

  modifier onlyOwner() {
    require(owner == msg.sender, "Only owner is allowed to call this method");
    _;
  }

  function increaseSupply() public onlyOwner {
    totalSupply += 1000;
    emit SupplyIncrease(totalSupply);
  }
  
  function getSupply() public view returns(uint) {
      return totalSupply;
  }

}

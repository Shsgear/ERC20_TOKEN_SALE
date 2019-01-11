pragma solidity >=0.4.21 <0.6.0;
// 迁移合约
contract Migrations {
  address public owner;
  uint public last_completed_migration;
  // 合约拥有者等于当前的合约调用者
  constructor() public {
    owner = msg.sender;
  }

  // 修饰符  修饰执行者必须为拥有者
  modifier restricted() {
    if (msg.sender == owner) _;
  }

  // 
  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }


  function upgrade(address new_address) public restricted {
    Migrations upgraded = Migrations(new_address);
    upgraded.setCompleted(last_completed_migration);
  }
}

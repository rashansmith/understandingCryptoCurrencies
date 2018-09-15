// Simple token Contract
// to run and edit, use https://remix.ethereum.org/

//specify compiler version
pragma solidity ^0.4.0;

contract SmartContract101 {
   uint initialSupply;
   uint public timestamp;
   
   // maps all accounts to given tokens
   mapping (address => uint) public tokensAt;
   
   function SmartContract101(uint _initialSupply) public {
       initialSupply = _initialSupply;
       timestamp = now;
   }
   
   // payable - receive ether
   function buyTokens() payable {
       uint amountToBuy = msg.value / 100;
       require(amountToBuy <= initialSupply && amountToBuy >= 1);
       tokensAt[msg.sender] += amountToBuy;
       initialSupply -= amountToBuy;
   }
    
}

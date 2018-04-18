pragma solidity ^0.4.21;

contract TokenERC20 {
  string public name;
  string public symbol;
  uint8 public decimal = 18;
  uint256 public totalSupply;
  mapping (address => uint256) public balanceOf;
  
  event Transfer(address from, address to, uint256 value);

  function TokenERC20(uint256 initialSupply, string tokenName, string tokenSymbol) public {
    totalSupply = initialSupply * 10 ** uint256(decimal);
    name = tokenName;
    symbol = tokenSymbol;
    balanceOf[msg.sender] = totalSupply;    
  } 
}

interface TokenERC20interface {

}

contract BasicContract {

}

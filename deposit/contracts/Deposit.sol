pragma solidity 0.5.12;

contract Deposit{



uint varBalance = 0;

function sendFund(uint amt)public payable{
  require(msg.value >= 1 ether);
  varBalance += amt;

}

function withdrawAllFund()public payable returns(uint){
  uint toTransfer = varBalance;
  varBalance = 0;
  msg.sender.transfer(toTransfer);
  return toTransfer;
}





}

pragma solidity 0.5.12;

contract Deposit{


  /*
    uint public fundPool;
    uint public betAmount;
    uint private percentage;
    uint public playerGuess;
    uint private status_wl;
    uint private sendAmount;





    function receiveFund_pool()public payable{
        require(msg.value >= 10 ether);

        fundPool = msg.value;
    }

    function receiveBetAmount(uint betInput) public{
       betAmount = betInput*10^18;

    }

    function getPlayerGuess(uint guess)public{
        playerGuess = guess;

    }



    function receiveFund_player()public payable{
        require(msg.value >= 1 ether);
        fundPool += betAmount;



    }

    function payPlayer() public payable returns(uint) {
        require(status_wl == 1);
        uint toTransfer = betAmount *2;
        betAmount = 0;
        status_wl = 0;
        msg.sender.transfer(toTransfer);
        return toTransfer;


    }




    function compareNum()public returns(uint){


        if(now % 2 == playerGuess){
            //return (playerGuess, resultGen);
            status_wl = 1 ;
            payPlayer();
            return 1;
        }

        else{
            //fundPool = fundPool + betAmount *10^18;
            //return (playerGuess, resultGen);
            status_wl = 0;
            return 0;
        }
    }


*/

uint varBalance = 0;

function sendFund(uint amt)public payable{
  require(msg.value >= 1 ether);
  varBalance += amt;

}

function withdrawAllFund()public payable returns(uint){
  uint toTransfer = varBalance;
  varBalance = 0;
  msg.sender.transfer(toTransfer);
}





}

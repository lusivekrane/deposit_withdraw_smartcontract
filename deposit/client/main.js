var web3 = new Web3(Web3.givenProvider);
var contractInstance;

$(document).ready(function() {
    window.ethereum.enable().then( accounts => {
      contractInstance = new web3.eth.Contract(abi, "0x01b3F4657e1c409Cc16cA9E91aA55c276Ac3d636" , {from:accounts[0]} )
      console.log(contractInstance);

    });


    $("#deposit_button").click(deposit);
    $("#withdraw_button").click(withdraw);

});

function deposit(){
  var amt = $("#depositAmt").val();

  var config = {
    value: web3.utils.toWei(amt, "ether")
  }

  contractInstance.methods.sendFund(amt).send(config)
  .on("transactionHash", function(hash){
    console.log(hash);
  })
  .on("confirmation", function(confirmationNr){
    console.log(confirmationNr);
  })
  .on("receipt", function(receipt){
    console.log(receipt);
    alert("Done");
  })

}

function withdraw(){

  contractInstance.methods.withdrawAllFund().send()
  .on("transactionHash", function(hash){
   console.log(hash);
 })
 .on("confirmation", function(confirmationNr){
   console.log(confirmationNr);
 })
 .on("receipt", function(receipt){
   console.log(receipt);
   alert("Done");
 })

}

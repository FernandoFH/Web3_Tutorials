pragma solidity ^0.4.25;

contract PayableContract {
    function PayableContract(){
        
    }
    
    function recieveFunds() payable {
        
    }
    
    function getBalance() constant returns(uint) {
        return this.balance;
    }
}

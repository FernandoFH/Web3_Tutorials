pragma solidity ^0.4.25;

contract Savings {
    address owner;
    
    event UpdateStatus(string msg);
    event UserStatus(string _msg, address user, uint amount);
    
    function Savings(){
        owner = msg.sender;
    }
    modifier onlyOwner(){
        if(owner != msg.sender){
            throw;
        } else {
            _;
        }
    }
    function kill() onlyOwner{
        suicide(owner);
    }
    
    function depositFunds(uint amount) payable {
        if(owner.send(amount)){
            UserStatus('User has deposited some money ', msg.sender, msg.value);
        }
    }
    function WidthdrawFunds(uint amount) onlyOwner {
        if(owner.send(amount)){
            UpdateStatus('User Widthdraw some money');
        }
    }
    
    function getFunds() onlyOwner constant returns(uint) {
        return this.balance;
    }
}

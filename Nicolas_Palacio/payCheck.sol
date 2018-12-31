pragma solidity ^0.4.25;

contract PayCheck {
    
    address[] employees =[add1,add2,add3,add4];
    
    uint totalRecieved = 0;
    
    mapping (address => uint) withdrawAmounts;
    
    function withdraw() canWithdraw {
        uint amountAllocated = totalRecieved/employees.length;
        uint amountWithdrawn = withdrawAmounts[msg.sender];
        uint amount = amountAllocated - amountWithdrawn;
        withdrawAmounts[msg.sender] = amountWithdrawn + amount;
        if(amount > 0){
            msg.sender.transfer(amount);
        }
    }
    
    function PayCheck() payable {
        updateTotal();
    } 
    function () payable {
        updateTotal();
    }
    function updateTotal() internal {
        totalRecieved += msg.value;
    }
    modifier canWithdraw() {
        bool contains = false;
        
        for (uint i=0; i < employees.length; i++){
            if (employees[i] == msg.sender){
                contains = true;
            }
        }
        require(contains);
        _;
    }
}

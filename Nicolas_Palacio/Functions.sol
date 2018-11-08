pragma solidity ^0.4.25;

contract Functions {
    
    string public text = '';
    int numberOfChange = 0;
    
    function changeToHello(){
        numberOfChange += 1;
        text = 'Hola';
    }
    
    function callChangeToHello(){
        changeToHello();
        if (numberOfChange==2){
            changeToBye();
        }
    }
    
    function changeToBye(){
        numberOfChange += 1;
        text = 'Bye';
    }
}

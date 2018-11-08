pragma solidity ^0.4.25;

contract HelloWorldContrat {
    string word = 'Hello';
    address owner;
    
    function HelloWorldContrat() {
        owner = msg.sender;
    }
    
    modifier onlyOwner{
        if(owner != msg.sender){
            throw;
        } else {
            _;
        }
    }

    function getWord() constant returns(string) {
        return word; 
    }
    
    function setWord(string newWord) onlyOwner returns(string){
        word = newWord;
        return "Si eres el Dueño del Contrato."; 
    } 
}

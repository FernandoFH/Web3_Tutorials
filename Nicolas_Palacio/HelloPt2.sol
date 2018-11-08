pragma solidity ^0.4.25;

contract HelloWorldContrat {
    string word = 'Hello';
    address owner;
    
    function HelloWorldContrat() {
        owner = msg.sender;
    }
    
    function getWord() constant returns(string) {
        return word; 
    }
    
    function setWord(string newWord) returns(string){
        if(owner != msg.sender){
            return "No eres el Dueño del Contrato." ;
            
        }
        word = newWord;
        return "Si eres el Dueño del Contrato."; 
    } 
}

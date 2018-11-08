pragma solidity ^0.4.25;

contract HelloWorldContrat {
    string word = 'Hello'; 
    
    function getWord() constant returns(string) {
        return word; 
    }
    
    function setWord(string newWord) returns(string){
        word = newWord;
        return word; 
    } 
    
}

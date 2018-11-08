pragma solidity ^0.4.25;

contract SolidifyKnowladge {
    
    string word;
    uint number;
    address owner; 
    
    function SolidifyKnowladge(string _word) {
        word = _word;
        number = 42;
        owner = msg.sender;
    }
    
    event Changed(address a);
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
    function getWord() constant returns (string){
        return word;
    }
    
    function setWord(string w) onlyOwner {
        word = w;
        Changed(msg.sender);
    }
}

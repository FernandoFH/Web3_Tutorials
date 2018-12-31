pragma solidity ^0.4.25;

contract Calculator {
    Math math = new Math();
    
    function twoPlusFour() constant returns (int) {
        return math.add(2,4);
    }
    function twoTimeFour() constant returns (int) {
        return math.multiply(2,4);
    }
} 

contract Math {
   function add(int a, int b) returns (int){
        return a + b;   
    }
    
   function multiply(int a, int b) returns (int){
        return a * b;   
    }
 }

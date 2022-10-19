// SPDX-License-Identifier: MIT


pragma solidity ^0.8.8;

contract learastruct{
    //so a struct is an object that can hold many data types

    //we create and initialize a struct that contains different animal types that we will define in a function
    struct Animals{
        string text; //farmanimal
        uint age; //age of the animal
        string text2; //farm name 
    }

    //we define the struct Animals with the variable we want to map back to the struct (animals)
    //structName + variable name we want to store our strings (animal types) we created above
    //initialize the state variable as animals list to be stored in an array
    
    Animals[] public animalslist;  


    //we create a function that maps the animals to the animal types in the struct, stored in the animals variable
    
    
    //how do we create a function to store the animal

    //we can do so using a function

    function thenanimal(string memory _text, uint _age, string memory _text2) public { 
        animalslist.push(Animals(_text, _age, _text2));
    }

    //we can fill the array with animals in different indices of the Animals array using the push method
    //Then we can call the array (animals list) with the index number to get the details

    


}









// SPDX-License-Identifier: MIT


pragma solidity 0.8.8;

contract learnastruct{
    //so a struct is an object that can hold many data types

    //we create and initialize a struct that contains different animal types that we will define in a function
    struct Animals{
        string FarmAnimal;
        string Bird;
        string Pet;
    }

    //we define the struct Animals with the variable we want to map back to the struct (animals)
    //structName + variable name we want to store our strings (animal types) we created above
    Animals animals; 


    //we create a function that maps the animals to the animal types in the struct, stored in the animals variable
    function getAnimals() public {
        animals = Animals('cow', 'parrot', 'dog');
    }
    
    //now with the animals stored, how do we create a function to return the animal types???


}





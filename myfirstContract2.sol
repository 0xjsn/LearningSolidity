// SPDX-License-Identifier: MIT

//added numerous other functions and explanations for what is executed


pragma solidity 0.8.8;

contract myfirstContract{
    uint256 number = 0; //define a number variable as a uint256 data type
    string[] names; //initialize the array
    mapping (string => uint) public phoneNumbers; //initialize a mapping called phoneNumbers


    //create a function with an input parameter (_num) 
    function changeNumber(uint _num) public {
        //store the global variable number as the input parameter _num
        number = number + _num; 
    }

    //create a function that gets the number 
    //we need to think about whether our desired actions change the state of the blockchain
    //if we are just calling a value, that means no

    //we should use the keywords view and returns (variable type)
    function getNumber() public view returns (uint256){
        return number;

    }

    //we are going to add an array to our smart contract, taking in a name into a string using the .push method

    function addNames(string memory _name) public {
        names.push(_name); //arrayname.push(inputed parameter)
    }

    //we are going to create another function that we can use to return the name we added at a given index
    //the function takes a parameter that represents the index of a given name
    //the function will return the value at the given index - so say we create an 
    //say we create an array that holds the names [Clyde, Don, Patricia] and we run the function with the parameter 0, 
    //it should return the name Clyde
    
    function getName(uint _index) public view returns (string memory){
        return names[_index]; //read this as names[0] - because it as an array
    }

    //create a function that maps names to phone numbers
    //this function will pass in 2 parameters (a string name, and integers
    function addCellNumber(string memory _name, uint _number) public {
        phoneNumbers[_name] = _number; //map the name to the number
    }

    //create a function that gets the cell number
    function getCellNumber(string memory _name) public view returns (uint){
        return phoneNumbers[_name]; 
        //this is returning the number associated with the name
        //the instructions say "return the number associated with the name that is passed in"
        //this is not an array 
    }

    //now - should we be able to do the name by passing in a number to return a name?


}

//what I'm finding is, for each variable we declare, we need two functions
//first function is to help define objects with data - push data into an array, etc.
//second function is to return the values stores in those objects

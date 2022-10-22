// SPDX-License-Identifier: MIT

pragma solidity 0.8.8;

contract myfirstContract{
    uint256 number = 0; //define a number variable as a uint256 data type


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

    /* Create a new function called ‘getNumberMultiplied’, that takes in a parameter called _num, and then returns an integer of the result of multiplying the _num parameter with the currently stored number parameter. 
    The function should be defined as a view function similar to the getNumber() function, because we are not modifying the state of the contract*/

    function getNumberMultiplied(uint _num) public view returns (uint256){
        return number * _num;

    }


    /* Create a new function called ‘addNumbers’ that takes in two uint parameters, _num1 and_num2, and then stores the result of adding the two numbers into the number variable*/

    function addNumbers(uint _num1, uint _num2) public {
        number = _num1 + _num2;
    }


}


/*
[
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_num",
				"type": "uint256"
			}
		],
		"name": "changeNumber",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "getNumber",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	}
]
*/

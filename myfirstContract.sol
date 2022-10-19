// SPDX-License-Identifier: MIT

pragma solidity 0.8.8;

contract myfirstContract{
    uint256 number; //define a number variable as a uint256 data type


    //create a function with an input parameter (_num) 
    function changeNumber(uint _num) public {
        //store the global variable number as the input parameter _num
        number = _num; 
    }

    //create a function that gets the number 
    //we need to think about whether our desired actions change the state of the blockchain
    //if we are just calling a value, that means no

    //we should use the keywords view and returns (variable type)

    function getNumber() public view returns (uint256){
        return number;

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

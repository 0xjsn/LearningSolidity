//HFLT

//quick code for Value(Data) Types

// SPDX-License-Identifier: MIT
pragma solidity 0.8.8; //0.8.12 - define the solidity compiler version



contract sampleTypes{
    //example of a unsigned integer (must be a positive integer)
    uint public num = 16; 

    //example of a signed integer (can be either positive or negative)
    int public num3 = -3;
    
    //example of a boolean [true]
    bool public yes = true;
    
    //example of a boolean [false]
    bool public no = false;

    //example of an Ethereum address stored
    address public myAddress = 0xa9f77f7E116EcDbAd926920a4B9dC8AEE5476A30;

    //example of an enum - an enum is for enumerated lists 
    enum job {doctor, lawyer, policeman}

    //example of a byte - stored from 1 to 32, can be hex, integer (negative or positive), non-integer, or a character depending on the byte size
    bytes1 u = "i"; 

    bytes2 uu = "ie"; //bytes2 stores 2 bytes or 16 bits
    //we do not need the 'public' declaration in bytes

}


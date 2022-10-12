//a quick sample of reference types in solidity

// SPDX-License-Identifier: MIT
pragma solidity 0.8.8; //0.8.12 - define the solidity compiler version


contract whatreferences{

    //arrays - can be static and dynamic - dynamic arrays can be modified (or added to)
    //strings are by default arrays

    //Example of a static (string) array
    string[5] public names = ['tom', 'susan', 'jane', 'dom', 'fatima'];

    //string[x] where x is the number of elements in the array 
    //names = name of the array

    //Example of a dynamic arra
    string[] public names2 = ['tom', 'susan', 'jane', 'dom', 'fatima'];

    //the string with the empty brackets means that is is a dynamic array that can be modified

    //example of an integer arrays

    int[3] public integer = [-1,5,5];  

    uint[] public integer2 = [0,5,5,5,3];

    //example of bool arrays 
    bool[] public yesorno = [true, false, true, true];

    //can bool arrays be dynamic? yes 
    bool[3] public yesorno2 = [true, false, true];

}





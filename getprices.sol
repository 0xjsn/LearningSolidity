// SPDX-License-Identifier: MIT

pragma solidity 0.8.8;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

//"internal" - keyword that means something is only accessible inside a smart contract
//contructor () - a function that only gets used when you first deploy a smart contract

//what we are going to do in this smart contract is test price feeds - create, deploy, and use chainlink features

contract PriceConsumerV3 {
    AggregatorV3Interface internal priceFeed;
    AggregatorV3Interface internal priceFeed2;

    //Network: Goerli
    //Aggregator: ETH/USD
    //Address1: 0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e - what the price feed reference contract we want to use is
    //Address2: 0x48731cF7e84dc94C5f84577882c14Be11a5B7456 - reference contract for LINK
    //Address3

    //instantiate the constructor function

    constructor() public {
        priceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e); //price of ethereum using the matching Goerli contract
        priceFeed2 = AggregatorV3Interface(0x48731cF7e84dc94C5f84577882c14Be11a5B7456);  //price of ethereum using the matching Goerli contract
    }

    function getPriceETH() public view returns(int){
        (
            uint80 roundID,
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = priceFeed.latestRoundData();
        return price; // we simply want to return the price
    }

    function getPriceLINK() public view returns (int){
        (
            uint80 roundID,
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = priceFeed2.latestRoundData();
        return price;
    }

}





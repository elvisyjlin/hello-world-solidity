pragma solidity ^0.4.4;


contract HelloWorld {
  constructor() public {
    // constructor
    // not the same as the contract's name anymore
    // see https://github.com/ethereum/solidity/issues/3196
  }
  function hello() public pure returns (string) {
    return "Hello, World!";
  }
}

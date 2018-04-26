# Hello, World! in Solidity


## Install

1. Install [Node.js](https://nodejs.org)

   Please download and install from the official site.

2. Install [Truffle](https://github.com/trufflesuite/truffle)

   ```bash
   npm install -g truffle
   ```


## Get Started

1. Initialize Truffle in your project folder

   ```bash
   truffle init
   ```

   After initialization, you will find two folder `contracts` and `migrations`. Contracts are required to put in `contracts` while the contract deployment settings are in `migrations`.

2. Write up your contract

   Here is an example of the "Hello, World!" contract. 
   Create "HelloWorld.sol" under `contracts`.

   ```solidity
   pragma solidity ^0.4.4;
   contract HelloWorld {
     function hello() public pure returns (string) {
       return "Hello, World!";
     }
   }
   ```

3. Prepare the migration

   Here is a migration example for "HelloWorld.sol". 
   Create "2_deploy_migration.js" under `migrations`.

   ```javascript
   var HelloWorld = artifacts.require("HelloWorld");
   module.exports = function(deployer) {
     deployer.deploy(HelloWorld);
   }
   ```

4. Start Truffle console in development mode

   ```bash
   truffle develop
   ```

   In the Truffle command line, do

   ```bash
   compile
   migrate
   ```

   Or you can compile and migrate contracts before entering Truffle development.

   ```bash
   truffle compile
   truffle migrate
   ```

   Note: if you want to remigrate existed contracts, please run `migrate --reset` instead of simply `migrate`.

5. Test your contract

   In the interactive Truffle console, run the following commands:

   ```javascript
   let contract
   HelloWorld.deployed().then(instance => contract = instance)
   contract.hello()
   ```

   Then you will see the output says:

   ```bash
   'Hello, World!'
   ```


## Examples

For more examples of Solidity, please see [here](https://github.com/elvisyjlin/hello-world-solidity/blob/master/examples).

Contents:

1. HelloWorld


## Reference

https://blog.gasolin.idv.tw/2017/09/06/howto-write-a-smart-contract/
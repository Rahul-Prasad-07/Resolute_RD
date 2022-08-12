
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//this line import ERC-20 token standard fromopenZeppelin.
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

//new contract , named LW3Token , contract is an instance of ERC20.

// we created constructor function that is called when the smart contract is first deployed.
//Within the constructor, we want two arguments from the user - _name and _symbol which specify the name and symbol of our cryptocurrency.

//Immediately after specifying the constructor function, we call ERC20(_name, _symbol).
//Since we are extending the ERC20 contract, we need to initialize the ERC20 contract when we deploy ours. So, as part of our constructor,
// we also need to call the constructor on the ERC20 contract.

//_mint is an internal function within the ERC20 standard contract, which means that it can only be called by the contract itself. External users cannot call this function.
//Since you as the developer want to receive some tokens when you deploy this contract, we call the _mint function to mint some tokens to msg.sender.
//mint takes two arguments - an address to mint to, and the amount of tokens to mint.
//Since you will be the one deploying this contract, your address will be there in msg.sender.

contract RRDToken is ERC20 {

    constructor (string memory _name , string memory _symbol) ERC20(_name, _symbol){

        _mint(msg.sender, 10*10**18);

    }

}

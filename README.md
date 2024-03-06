# ProtoToken V2 Solidity Project

## Project Overview

ProtoToken V2 is an advanced ERC-20 token smart contract that utilizes OpenZeppelin's ERC20 standard implementation. This version introduces a minting function allowing the creation of new tokens under specific conditions. This feature includes a delay between mints to prevent abuse of the minting function. Ownership is established at contract deployment for secure management of minting functionalities.

## Features

- Inherits all functionalities of an ERC-20 token from OpenZeppelin's implementation.
- Controlled token minting with delay to prevent abuse.
- Owner-restricted functions to set minting amount and delay.

## Installation

To work with the ProtoToken V2 project:

1. Clone the repository.
2. Run `yarn install` to install dependencies.
3. Configure your `.env` file for secure storage of environment variables.

## Usage

This project includes npm scripts for interaction and deployment:

- `npm run compile`: Compiles the updated smart contract.
- `npm run test`: Runs a suite of tests to validate contract functionality.
- `npm run start`: Initiates a local development blockchain instance.
- `npm run deploy:sepolia`: Deploys the contract to the Sepolia testnet.
- `npm run deploy:dev`: Deploys the contract to a local Ethereum network.

## Contract Functions

- `mint`: Allows the owner to create new tokens after a specified delay.
- `setMintAmount`: Owner can set the amount of tokens to be minted.
- `setMintDelay`: Owner can set the delay between minting operations.

## Requirements

- Node.js installation.
- Yarn or npm for package management.
- Hardhat for smart contract compilation, testing, and deployment.

## Configuration

The `hardhat.config.js` file will hold network configurations. Ensure you have the correct network parameters and private keys specified in your `.env` file.

## Contributing

We welcome contributions. Please fork the repository, create a branch for your feature or fix, and submit a pull request.

## License

The ProtoToken V2 project is open-sourced under the MIT license.

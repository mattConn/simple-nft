# Simple NFT

This will compile and deploy a smart contract meant to act as a toy NFT written in solidity with Truffle.

You will need:
- A MetaMask wallet
- Access to Ropsten testnet node via Infura
- Some Ethereum from a faucet

## How To Build
- Install dependencies with `npm install`
- Before deployment/compilation:
    - Make sure you have access to Ropsten testnet via Infura. `PROJECT_ID` in `.env` will come from Infura. Make sure Ropsten endpoint is selected.
    - You need some Ethereum, I got one coin from https://faucet.ropsten.be/ You will need your account address for the faucet, which is found on MetaMask. When you deploy, Truffle will automatically select the first account (account 0).
    - You will also need your security mnemonic from MetaMask. This is found under `account > settings > security & privacy > reveal secret recovery phase` on MetaMask. This is `WALLET_MNEMONIC` in `.env`.
- Finally, compile and deploy with `truffle deploy --network ropsten` or run `make` (this will achieve the same result). Your smart contract address will be shown to you with other details. This address can be used to interact with your contract.

## Ropsten Deployed Contracts
- example.sol: https://ropsten.etherscan.io/address/0x56967Ea2f5d493E1eBa55B8B36dFcA66D464AA7A
- simple-nft.sol: https://ropsten.etherscan.io/address/0xE1a1Ac9d69315BA6001552d41C386DC97425Fb8c

## Issues
- I had issues interacting with my Ropsten deployed contract. On Remix, I could not get non-zero values back from my getters. On Ropsten Etherscan, I could not verify the contract (although they are there); I would get a message of bytecode mismatch. 

## Notes

### Research Sources
- Minimal NFT Smart Contract coding (inspiration for NFT attempt): https://hackernoon.com/code-a-minimalistic-nft-smart-contract-in-solidity-on-ethereum-a-how-to-guide-kl3u34l6
- Deploying to Ropsten with MetaMask, Truffle and dotenv passphrase storage: https://www.masonforest.com/blockchain/ethereum/2017/11/13/how-to-deploy-an-erc20-token-in-20-minutes.html
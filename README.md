# Simple NFT

This will compile and deploy a smart contract written in solidity with Truffle.

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
- Finally, compile and deploy with `truffle deploy --network ropsten`. Your smart contract address will be shown to you with other details. This address can be used to interact with your contract.

## Notes

### Research Sources
- Minimal NFT Smart Contract coding: https://hackernoon.com/code-a-minimalistic-nft-smart-contract-in-solidity-on-ethereum-a-how-to-guide-kl3u34l6
- Deploying to Ropsten with MetaMask, Truffle and dotenv passphrase storage: https://www.masonforest.com/blockchain/ethereum/2017/11/13/how-to-deploy-an-erc20-token-in-20-minutes.html
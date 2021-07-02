require('dotenv').config();
const HDWalletProvider = require("@truffle/hdwallet-provider");

const mnemonicPhrase = process.env["WALLET_MNEMONIC"];

module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*" // Match any network id
    },
    ropsten: {
    provider: () => new HDWalletProvider(mnemonicPhrase, `https://ropsten.infura.io/v3/${process.env["PROJECT_ID"]}`, 0),
      network_id: '3'
    }
  }
};
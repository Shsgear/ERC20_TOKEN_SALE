const DappToken = artifacts.require("./DappToken.sol");

const initalSupply = 1000**2;

module.exports = function(deployer) {
  deployer.deploy(DappToken, initalSupply);
};
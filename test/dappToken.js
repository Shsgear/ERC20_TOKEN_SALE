const DappToken = artifacts.require('./DappToken.sol');


contract('DappToken', (accounts) => {
    let tokenInstance;
    it("sets the total supply upon deployment", async () => {
        tokenInstance = await DappToken.deployed();
        // result is a Big Number
        const totalSupplyBN = await tokenInstance.totalSupply();
        assert.equal(totalSupplyBN.toNumber(), 1000**2, "total supply correct");
    })
})

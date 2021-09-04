const AwesomeToken = artifacts.require("AwesomeToken");

contract("AwesomeToken", (accounts) => {
  let tokenInstance;

  it("initializes the contract with the correct values", async () => {
    return await AwesomeToken.deployed()
      .then((instance) => {
        tokenInstance = instance;
        return tokenInstance.name();
      })
      .then((name) => {
        assert.equal(name, "AwesomeToken", "has the correct name");
        return tokenInstance.symbol();
      })
      .then((symbol) => {
        assert.equal(symbol, "ATK", "has the correct symbol");
        return tokenInstance.standard();
      })
      .then((standard) => {
        assert.equal(standard, "AwesomeToken v1.0", "has the correct standard");
      });
  });

  it("sets the total supply on deployment", async () => {
    return await AwesomeToken.deployed()
      .then((instance) => {
        tokenInstance = instance;
        return tokenInstance.totalSupply();
      })
      .then((totalSupply) => {
        assert.equal(
          totalSupply.toNumber(),
          1000000,
          "sets the total supply to 1,000,000"
        );
        return tokenInstance.balanceOf(accounts[0]);
      })
      .then((adminBalance) => {
        assert.equal(
          adminBalance.toNumber(),
          1000000,
          "allocates the initial supply to the creator of the token"
        );
      });
  });
});

const AwesomeToken = artifacts.require("AwesomeToken");

contract("AwesomeToken", (accounts) => {
  it("sets the total supply on deployment", () => {
    return AwesomeToken.deployed()
      .then((instance) => instance.totalSupply())
      .then((totalSupply) => {
        assert.equal(
          totalSupply.toNumber(),
          1000000,
          "sets the total supply to 1,000,000"
        );
      });
  });
});

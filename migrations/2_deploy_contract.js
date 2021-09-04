const AwesomeToken = artifacts.require("AwesomeToken");

module.exports = function (deployer) {
  deployer.deploy(AwesomeToken, 1000000);
};

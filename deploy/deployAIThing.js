module.exports = async function ({ deployments, getNamedAccounts }) {
  const { deploy, log } = deployments;
  const { deployer } = await getNamedAccounts();

  log("Deploying AIThing>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
  const AItHING = await deploy("AIThing", {
    from: deployer,
    args: [],
    log: true,
  });
  log(AItHING.address + ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
  log("Deployed AIThing>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
};

module.exports.tags = ["all", "AIThing"];

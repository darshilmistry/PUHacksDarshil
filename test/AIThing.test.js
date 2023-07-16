const { expect, assert } = require("chai")
const { getNamedAccounts, deployments, ethers } = require( "hardhat" )

describe("AIThing Tests", () => {

  let AIT, _deployer, _tester
  beforeEach(async () => {
    const { deployer, tester } = await getNamedAccounts()
    _deployer = deployer
    _tester = tester
    await deployments.fixture([ "all" ])

    AIT = await ethers.getContract("AIThin", deployer)

  })

  it("should add the contract", () => {
    console.log(AIT)
  })

})
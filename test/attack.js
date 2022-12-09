const { expect } = require("chai");
const { BigNumber } = require("ethers");
const { ethers, waffle } = require("hardhat");

describe("Attack", function(){
    it("Should ", async() => {

        const attack = await ethers.getContractFactory("Attack")
        const _attack = await attack.deploy()
        await _attack.deployed()

        console.log("Attack Contract Address: ", _attack.address)

        const good = await ethers.getContractFactory("Good")
        const _good = await good.deploy(_attack.address)
        await _good.deployed()

        console.log("Good Contract Address: ", _good.address)

        const [_,add1] = await ethers.getSigners()

        const tx = await _good.connect(add1).addUserToList()
        await tx.wait()

        const isEligible = await _good.connect(add1).isUserEligible()

        expect(isEligible).to.equal(false);
        
    })
})
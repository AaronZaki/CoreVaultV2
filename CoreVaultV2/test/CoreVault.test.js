const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("CoreVault", function () {
  let CoreVault, coreVault, owner, addr1, addr2;

  beforeEach(async function () {
    [owner, addr1, addr2] = await ethers.getSigners();
    CoreVault = await ethers.getContractFactory("CoreVault");
    coreVault = await CoreVault.deploy();
    await coreVault.deployed();
  });

  it("should deploy correctly and assign total supply to owner", async function () {
    const ownerBalance = await coreVault.balanceOf(owner.address);
    expect(await coreVault.totalSupply()).to.equal(ownerBalance);
  });

  it("should allow transfers and deduct fees correctly", async function () {
    const amount = ethers.parseUnits("100", 18);
    const fee = amount * 2n / 100n; // 2% fee
    const amountAfterFee = amount - fee;

    await coreVault.transfer(addr1.address, amount);
    expect(await coreVault.balanceOf(addr1.address)).to.equal(amountAfterFee);
    expect(await coreVault.balanceOf(await coreVault.feeReceiver())).to.equal(fee);
  });

  it("should allow approval and transferFrom transactions", async function () {
    const amount = ethers.parseUnits("100", 18);
    await coreVault.approve(addr1.address, amount);
    expect(await coreVault.allowance(owner.address, addr1.address)).to.equal(amount);
  });
});

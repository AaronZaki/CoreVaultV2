const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("AccessControl Contract", function () {
    let AccessControl, accessControl, owner, addr1, addr2;

    beforeEach(async function () {
        // Get the contract factory
        AccessControl = await ethers.getContractFactory("AccessControl");
        [owner, addr1, addr2] = await ethers.getSigners();

        // Deploy the contract
        accessControl = await AccessControl.deploy();
        await accessControl.deployed();
    });

    it("should correctly set the contract owner", async function () {
        expect(await accessControl.owner()).to.equal(owner.address);
    });

    it("owner should be able to transfer ownership", async function () {
        await accessControl.transferOwnership(addr1.address);
        expect(await accessControl.owner()).to.equal(addr1.address);
    });

    it("non-owner should not be able to transfer ownership", async function () {
        await expect(
            accessControl.connect(addr1).transferOwnership(addr2.address)
        ).to.be.revertedWith("Not owner");
    });

    it("owner should be able to add an admin", async function () {
        await accessControl.addAdmin(addr1.address);
        expect(await accessControl.isAdmin(addr1.address)).to.be.true;
    });

    it("non-owner should not be able to add an admin", async function () {
        await expect(
            accessControl.connect(addr1).addAdmin(addr2.address)
        ).to.be.revertedWith("Not owner");
    });

    it("owner should be able to remove an admin", async function () {
        await accessControl.addAdmin(addr1.address);
        await accessControl.removeAdmin(addr1.address);
        expect(await accessControl.isAdmin(addr1.address)).to.be.false;
    });

    it("non-owner should not be able to remove an admin", async function () {
        await accessControl.addAdmin(addr1.address);
        await expect(
            accessControl.connect(addr1).removeAdmin(addr1.address)
        ).to.be.revertedWith("Not owner");
    });

    it("owner should be an admin by default", async function () {
        expect(await accessControl.isAdmin(owner.address)).to.be.true;
    });

    it("admin (non-owner) should be able to call onlyAdmin function", async function () {
        await accessControl.addAdmin(addr1.address);

        // Deploy a test contract that uses onlyAdmin modifier
        const OnlyAdminTest = await ethers.getContractFactory(`
            contract OnlyAdminTest is AccessControl {
                function test() public view onlyAdmin returns (string memory) {
                    return "Success";
                }
            }
        `);
        const onlyAdminTest = await OnlyAdminTest.deploy();
        await onlyAdminTest.deployed();

        expect(await onlyAdminTest.connect(addr1).test()).to.equal("Success");
    });

    it("non-admin should not be able to call onlyAdmin function", async function () {
        const OnlyAdminTest = await ethers.getContractFactory(`
            contract OnlyAdminTest is AccessControl {
                function test() public view onlyAdmin returns (string memory) {
                    return "Success";
                }
            }
        `);
        const onlyAdminTest = await OnlyAdminTest.deploy();
        await onlyAdminTest.deployed();

        await expect(onlyAdminTest.connect(addr1).test()).to.be.revertedWith("Not admin");
    });
});

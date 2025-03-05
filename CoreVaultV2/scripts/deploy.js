const hre = require("hardhat");

async function main() {
    const [deployer] = await hre.ethers.getSigners();
    console.log("Deploying contracts with the account:", deployer.address);

    const CoreVault = await hre.ethers.getContractFactory("CoreVault");
    const coreVault = await CoreVault.deploy();

    await coreVault.deployed();
    console.log("CoreVault deployed to:", coreVault.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });

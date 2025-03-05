const hre = require("hardhat");

async function main() {
    console.log("Deploying AccessControl contract...");

    // Acquisition of contract factory
    const AccessControl = await hre.ethers.getContractFactory("AccessControl");

    // Deployment contract
    const accessControl = await AccessControl.deploy();
    await accessControl.deployed();

    console.log(`AccessControl deployed to: ${accessControl.address}`);
}

// Run script
main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});

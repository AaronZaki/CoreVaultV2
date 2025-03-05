const hre = require("hardhat");

async function main() {
    console.log("Deploying AccessControl contract...");

    // 获取合约工厂
    const AccessControl = await hre.ethers.getContractFactory("AccessControl");

    // 部署合约
    const accessControl = await AccessControl.deploy();
    await accessControl.deployed();

    console.log(`AccessControl deployed to: ${accessControl.address}`);
}

// 运行脚本
main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});

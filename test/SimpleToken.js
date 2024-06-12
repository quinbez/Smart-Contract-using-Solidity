const { ethers } = require("hardhat");

async function main() {
    const SimpleToken = await ethers.getContractFactory("SimpleToken");
    const simpleToken = await SimpleToken.deploy(1000000);
    await simpleToken.deployed();
    console.log("SimpleToken deployed to:", simpleToken.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });

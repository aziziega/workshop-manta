// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {TokenMeme} from "../src/TokenMeme.sol";

contract TokenMemeScript is Script {
    TokenMeme public tokenMeme;

    function setUp() public {}

    function run() public {
        vm.createSelectFork(vm.envString("RPC_URL"));
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        tokenMeme = new TokenMeme();
        console.log("TokenMeme deployed at:", address(tokenMeme));

        vm.stopBroadcast();
    }

    // forge script TokenMemeScript --verifier-url https://pacific-explorer.sepolia-testnet.manta.network/api --verify --verifier blockscout --broadcast
}

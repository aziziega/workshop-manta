// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {TokenMeme} from "../src/TokenMeme.sol";

contract TokenMemeTest is Test {
    TokenMeme public tokenMeme;

    address public agus = makeAddr("Agus");
    address public bambang = makeAddr("Bambang");

    function setUp() public {
        tokenMeme = new TokenMeme();
    }

    function test_mint() public {
        assertEq(tokenMeme.totalSupply(), 1_000_000_000_000_000e18, "Total Supply tidak 1 Triliun");
    }

    function test_transfer() public {
        // 100 token kepada Bambang
        tokenMeme.transfer(bambang, 100e18);
        assertEq(tokenMeme.balanceOf(bambang), 100e18, "Bambang tidak mendapatkan 100 FFF");
        console.log("Bambang balance", tokenMeme.balanceOf(bambang));

        // 1000 token kepada Agus
        tokenMeme.transfer(agus, 1000e18);
        assertEq(tokenMeme.balanceOf(agus), 1000e18, "Agus tidak mendapatkan 1000 FFF");
        console.log("Agus balance", tokenMeme.balanceOf(agus));
    }
}

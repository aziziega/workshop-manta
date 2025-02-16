// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ERC20} from "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract TokenMeme is ERC20 {
    constructor() ERC20("Fufufafa", "FFF") {
        _mint(msg.sender, 1_000_000_000_000_000e18);
    }
}
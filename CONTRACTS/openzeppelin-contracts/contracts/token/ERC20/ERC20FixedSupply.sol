
// SPDX-License-Identifier: MIT

import "./ERC20.sol";
pragma solidity ^0.8.0;


contract MyToken is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        // Mint 100 tokens to msg.sender
        // Similar to how
        // 1 dollar = 100 cents
        // 1 token = 1 * (10 ** decimals)
        _mint(msg.sender, 1000000000 * 10**uint(decimals()));
    }
}
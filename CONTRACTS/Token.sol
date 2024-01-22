// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import "./solmate-main/src/tokens/ERC20.sol";
// import "./IERC20Permit.sol";

contract ApeCoin is ERC20 {
    
    constructor () ERC20 ("ApeCoin", "APE", 18) {
        
    }

    function mint(address _to, uint _amount) external {
        _mint(_to, _amount);
    }
} 
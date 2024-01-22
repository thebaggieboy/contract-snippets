// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import "./IERC20Permit.sol";

contract Vault {
    IERC20Permit public immutable token;

    constructor(address _token) {
        token = IERC20Permit(_token);
    }

    function deposit(uint amount) external payable {
        token.transferFrom(msg.sender, address(this), amount);
    }

    /*
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    )
    */

    // Call permit, then transfer
    function depositWithPermit(uint amount, uint deadline, uint8 v, bytes32 r, bytes32 s) external payable{
        token.permit(msg.sender, address(this), amount, deadline, v, r, s);
        token.transferFrom(msg.sender, address(this), amount);
    }
}
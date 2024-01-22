// SPDX-License-Identifier: MIT
pragma solidity ^0.6.8;

contract Max {
    // 1) Just type in the number!
    uint256 constant public MAX_INT_NUMBER = 115792089237316195423570985008687907853269984665640564039457584007913129639935;
    
    // 2) Use the hex version of the number
    uint256 constant public MAX_INT_HEX = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
    
    // 3) Casting -1
    uint256 constant public MAX_INT_CAST = uint256(-1);
    
    // 4) Using exponentiation
    uint256 constant public MAX_INT_EXPONENTIATION = 2**256 - 1;
    
    // 5) Type (Solidity 0.6.8)
    uint256 constant public MAX_INT_TYPE = type(uint256).max;

}
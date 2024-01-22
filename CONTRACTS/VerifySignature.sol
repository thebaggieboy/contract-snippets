// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract VerifySignature {
// deadline = 1666312333377
    bytes32 public constant PERMIT_TYPEHASH = keccak256("Permit(address owner,address spender,uint256 value,uint256 deadline)");
    //bytes32 public constant PERMIT_TYPEHASH = 0x05619a74ecd0240afc3bfb1df2bd1319401220fb577809c3a09bf0ab809ac861;
    
    // uint256 MAX_INT = 115792089237316195423570985008687907853269984665640564039457584007913129639935

    uint256 constant public MAX_INT_EXPONENTIATION = 2**256 - 1;
    // Input the parameters needed in the permit function to create an hash on it.
    // Hash the message (hash = getPermitMessageHash)
   function getPermitMessageHash(
        bytes32 _PERMIT_TYPEHASH,
        address _owner,
        address _spender,
        uint256 _value,
        uint256 _deadline
       
    ) public view returns (bytes32) {
        require(_owner != address(0), "invalid-address-0");
        
        require(_deadline >= block.timestamp, "PERMIT_DEADLINE_EXPIRED");
        return keccak256(abi.encodePacked(_PERMIT_TYPEHASH, _owner, _spender, _value, _deadline));
    }

    // Split signature into different bits
    function splitSignature(bytes memory signature)
        public
        pure
        returns (
            bytes32 r,
            bytes32 s,
            uint8 v
        )
    {
       require(signature.length == 65, "invalid signature length");

        assembly {
            r := mload(add(signature, 32))
            s := mload(add(signature, 64))
            v := byte(0, mload(add(signature, 96)))
        }
    }

 

}


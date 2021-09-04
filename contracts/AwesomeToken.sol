// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract AwesomeToken {
    // The total amount of tokens in existence
    // Doesnt need to have a getter, because we set the visibility to public.
    uint256 public totalSupply;

    constructor() public {
        totalSupply = 1000000; // 1M Tokens
    }
}

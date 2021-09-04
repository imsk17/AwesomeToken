// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <0.9.0;

contract AwesomeToken {
    // The total amount of tokens in existence
    // Doesnt need to have a getter, because we set the visibility to public.
    uint256 public totalSupply;

    constructor() {
        totalSupply = 1000000; // 1M Tokens
    }
}

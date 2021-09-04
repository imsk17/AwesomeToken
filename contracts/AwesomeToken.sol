// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <0.9.0;

contract AwesomeToken {
    // Name of the token
    string public name = "AwesomeToken";

    // Symbol of the token
    string public symbol = "ATK";

    // Standard of the token / Basically defines version
    string public standard = "AwesomeToken v1.0";

    // The total amount of tokens in existence.
    // Doesnt need to have a getter, because we set the visibility to public.
    uint256 public totalSupply;

    // Maps the address to the balance of the particular address.
    mapping(address => uint256) public balanceOf;

    // Event which is triggered when [from] has sent [value] tokens to [to].
    event Transfer(address indexed _from, address indexed _to, uint256 _value);

    constructor(uint256 _totalSupply) {
        // Allocate the total supply to the creator of the token.
        balanceOf[msg.sender] = _totalSupply;
        totalSupply = _totalSupply; // 1M Tokens
    }

    // Transfer _value tokens from sender's address to another.
    // Fires the Transfer event on a successful transfer.
    // @returns bool success - true if the transfer was successful else false.
    // @throws if the transfer is not successful.
    function transfer(address _to, uint256 _value)
        public
        returns (bool success)
    {
        require(balanceOf[msg.sender] >= _value);
        // Safely transfer the balance.
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }
}

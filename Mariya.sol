// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.18;
contract MyToken {

    // public variables here
     string public tokenName = "Mariya";
     string public tokenAbbr = "MY";
     uint public totalSupply = 0; 

    // mapping variable here

    mapping(address => uint) public balances;

    // mint function

    function mint(address _address , uint value) public{
        totalSupply += value;
        balances[_address] += value;
    }

    // burn function
    function burn(address _address , uint value) public{
        totalSupply -= value;
        balances[_address] -= value;
    }
}

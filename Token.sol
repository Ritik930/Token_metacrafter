// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract HelloWorld1 {
    // Public variables here
    string public tokenName = "Ritil";
    string public tokenAbbrv = "MTA";
    uint public totalSupply = 0;
    
    // Mapping variable here
    mapping(address => uint) public balances;
    
    // Mint function
    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Burn function
    function burn(address _address, uint _value) public {
        require(balances[_address] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}

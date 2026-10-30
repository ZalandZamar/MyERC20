// SPDX-License-Identifier: MIT
pragma solidity 0.8.34;

contract MyERC20 {
    // token variables

    uint256 public totalSupply;
    uint8 public decimals = 18;
    string public name;
    string public symbol;

    mapping(address => uint256) public balanceOf;

    // constructor function

    constructor(uint256 initialSupply, string memory tokenName, string memory tokenSymbol) {
        totalSupply = initialSupply * 10 ** decimals;
        balanceOf[msg.sender] = totalSupply;
        name = tokenName;
        symbol = tokenSymbol;
    }

    function getName() public view returns (string memory) {}

    // Returns the number of decimals the token uses

    function getDecimals() public view returns (uint8) {}

    // gets the total token supply

    function getTotalSupply() public view returns (uint256) {}
}

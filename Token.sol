// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract StoneToken is ERC20 {
  constructor() ERC20("Token Coin", "TTC") {
        _mint(address(this), 100000 * (10 ** uint256(decimals())));
        _approve(address(this), msg.sender, totalSupply());
        _transfer(address(this), msg.sender, totalSupply());
  }
}

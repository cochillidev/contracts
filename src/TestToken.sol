// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "openzeppelin/token/ERC20/ERC20.sol";
import "openzeppelin/token/ERC20/extensions/ERC20Burnable.sol";
import "openzeppelin/token/ERC20/extensions/draft-ERC20Permit.sol";

contract TestToken is ERC20, ERC20Burnable, ERC20Permit {
    constructor() ERC20("Test Token", "USDC") ERC20Permit("Test Token") {
        _mint(msg.sender, 100000000 * 10 ** decimals());
    }
}

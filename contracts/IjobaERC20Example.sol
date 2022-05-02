// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract IjobaERC20Example is ERC20 {

    constructor(uint256 _maxSupply) ERC20("IjobaToken", "IJB") {
        _mint(_msgSender(), _maxSupply * 10 ** decimals());
    }
}
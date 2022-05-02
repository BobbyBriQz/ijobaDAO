// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

//Governance token that facilitates voting
contract IjobaToken is ERC20Votes {

    constructor(uint256 _maxSupply) ERC20("IjobaToken", "IJB") ERC20Permit("IjobaToken") {
        _mint(_msgSender(), _maxSupply * 10 ** decimals());
    }

    //Functions below are overrides required by solidity

    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override(ERC20Votes) {
        super._afterTokenTransfer(from, to, amount);
    }

    function _mint(address account, uint256 amount) internal override(ERC20Votes) {
        super._mint(account, amount);
    }

    function _burn(address account, uint256 amount) internal override(ERC20Votes) {
        super._burn(account, amount);
    }
}

// SPDX-License-Identifier: MIT
// This is a memecoin that can moon, reasons: 5% owned by the contract creator, no mint function, lp sent to dead address, let's go, 
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract BOOM is Initializable, ERC20Upgradeable, ERC20BurnableUpgradeable, OwnableUpgradeable {
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address initialOwner) initializer public {
        __ERC20_init("BOOM", "BOM");
        __ERC20Burnable_init();
        __Ownable_init(initialOwner);

        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}
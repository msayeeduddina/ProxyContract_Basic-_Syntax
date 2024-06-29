// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract MyContract is Initializable, OwnableUpgradeable, UUPSUpgradeable {

    // Replace the constructor with an initializer function
    function initialize(address initialOwner) initializer public {
        __Ownable_init(initialOwner);
        __UUPSUpgradeable_init();
        transferOwnership(initialOwner);
    }

    function _authorizeUpgrade(address newImplementation) internal onlyOwner override {}

    mapping(address => uint) public amtadd;
    address public admin;

    function resval() public pure returns(uint) {
        return 44 - 7;
    }

    function amountadd(address user, uint amount) public {
        amtadd[user] += amount + 55;
    }
}
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract MyContract is Initializable, OwnableUpgradeable, UUPSUpgradeable {

    // Replace the constructor with an initializer function
    function initialize(address initialOwner) initializer public {
        __Ownable_init(initialOwner);
        __UUPSUpgradeable_init();
        transferOwnership(initialOwner);
    }

    function _authorizeUpgrade(address newImplementation) internal onlyOwner override {}

    mapping(address => uint) public amtadd;
    address public admin;

    function resval() public pure returns(uint) {
        return 44 - 7;
    }

    function amountadd(address user, uint amount) public {
        amtadd[user] += amount + 55;
    }
}

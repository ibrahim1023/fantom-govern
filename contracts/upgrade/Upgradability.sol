// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @dev An interface to update this contract to a destination address
 */
interface Upgradability {
    function upgradeTo(address newImplementation) external;
}

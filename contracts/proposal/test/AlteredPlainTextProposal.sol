// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../PlainTextProposal.sol";

contract AlteredPlainTextProposal is PlainTextProposal {
    constructor(
        string memory v1,
        string memory v2,
        bytes32[] memory v3,
        uint256 v4,
        uint256 v5,
        uint256 v6,
        uint256 v7,
        uint256 v8,
        address v9
    ) public PlainTextProposal(v1, v2, v3, v4, v5, v6, v7, v8, v9) {}

    function name() public view override returns (string memory) {
        return "altered";
    }
}

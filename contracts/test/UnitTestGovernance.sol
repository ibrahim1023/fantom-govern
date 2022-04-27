// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../governance/Governance.sol";

contract UnitTestGovernance is Governance {
    // reduce proposal fee in tests
    function proposalFee() public pure override returns (uint256) {
        return proposalBurntFee() + taskHandlingReward() + taskErasingReward();
    }

    function proposalBurntFee() public pure override returns (uint256) {
        return 0.5 * 1e18;
    }

    function taskHandlingReward() public pure override returns (uint256) {
        return 0.4 * 1e18;
    }

    function taskErasingReward() public pure override returns (uint256) {
        return 0.1 * 1e18;
    }
}

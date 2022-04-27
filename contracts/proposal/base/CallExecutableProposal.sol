// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./BaseProposal.sol";
import "../../governance/Proposal.sol";

contract CallExecutableProposal is BaseProposal {
    // Returns execution type
    function executable() public pure override returns (Proposal.ExecType) {
        return Proposal.ExecType.CALL;
    }

    function pType() public pure override returns (uint256) {
        return uint256(StdProposalTypes.UNKNOWN_CALL_EXECUTABLE);
    }

    function execute_call(uint256) public pure override {
        require(false, "must be overridden");
    }
}

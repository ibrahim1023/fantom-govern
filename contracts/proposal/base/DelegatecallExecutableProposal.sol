// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./BaseProposal.sol";
import "../../governance/Proposal.sol";

contract DelegatecallExecutableProposal is BaseProposal {
    // Returns execution type
    function executable() public pure override returns (Proposal.ExecType) {
        return Proposal.ExecType.DELEGATECALL;
    }

    function pType() public pure override returns (uint256) {
        return uint256(StdProposalTypes.UNKNOWN_DELEGATECALL_EXECUTABLE);
    }

    function execute_delegatecall(address, uint256) public virtual override {
        require(false, "must be overridden");
    }
}

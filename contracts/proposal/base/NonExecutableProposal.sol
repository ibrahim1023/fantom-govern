// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./BaseProposal.sol";
import "../../governance/Proposal.sol";

contract NonExecutableProposal is BaseProposal {
    function pType() public view virtual override returns (uint256) {
        return uint256(StdProposalTypes.UNKNOWN_NON_EXECUTABLE);
    }

    // Returns execution type
    function executable()
        public
        view
        virtual
        override
        returns (Proposal.ExecType)
    {
        return Proposal.ExecType.NONE;
    }
}

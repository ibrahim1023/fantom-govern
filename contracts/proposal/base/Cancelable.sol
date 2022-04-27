// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../ownership/Ownable.sol";
import "../../governance/Governance.sol";

contract Cancelable is Ownable {
    constructor() public {
        Ownable.initialize(msg.sender);
    }

    function cancel(uint256 myID, address govAddress) public virtual onlyOwner {
        Governance gov = Governance(govAddress);
        gov.cancelProposal(myID);
    }
}

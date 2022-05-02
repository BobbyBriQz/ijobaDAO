// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "@openzeppelin/contracts/governance/TimelockController.sol";

// This is what will own the NoiseMakers contract
contract TimeLock is TimelockController {

    // minDelay: How long you have to wait before executing
    // proposers: List of address that can propose
    // executors: Who can execute when a proposal passes
    constructor(
        uint256 minDelay, address[] memory proposers, address[] memory executors
    ) TimelockController(minDelay, proposers, executors) {}
}
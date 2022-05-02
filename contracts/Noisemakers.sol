// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Noisemakers is Ownable {

    string[] private listOfNoisemakers;

    // Emitted when new name is added to noise makers
    event NameAdded(string studentName);

    // Adds a student's name to the list of noisemakers
    function store(string memory studentName) public onlyOwner {
        listOfNoisemakers.push(studentName);
    }

    // Reads the list of noisemakers
    function retrieve() public view returns (string[] memory) {
        return listOfNoisemakers;
    }
}
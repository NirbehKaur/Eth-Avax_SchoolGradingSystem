// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SchoolGradingSystem {

    function checkEligibility(uint attendance) public pure returns (bool) {
        if (attendance >= 75) {
            return true;
        } else {
            revert("Not eligible for Exams");
        }
    }

    function setGrades(uint _marks) public pure returns (string memory) {
        require(_marks <= 100, "Marks should be between 0 to 100");
        require(_marks >= 0, "Marks should be non-negative");

        if (_marks >= 90) {
            return "A";
        } else if (_marks >= 80) {
            return "B";
        } else if (_marks >= 70) {
            return "C";
        } else if (_marks >= 60) {
            return "D";
        } else {
            return "E";
        }
    }

    function isFail(uint _marks) public pure returns (bool) {
    
        assert(_marks >= 0);

        return _marks < 60;
    }
}

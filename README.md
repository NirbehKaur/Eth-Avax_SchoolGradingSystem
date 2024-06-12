OVERVIEW

The SchoolGradingSystem is a simple smart contract implemented in Solidity for managing student eligibility and grading. This contract is designed to be deployed on the Ethereum blockchain and can be used by schools or educational institutions to automate the process of checking student eligibility for exams and assigning grades based on marks.

Features

Check Eligibility: Determines if a student is eligible for exams based on their attendance percentage.

Set Grades: Assigns grades to students based on their marks.

Check if Fail: Checks if a student has failed based on their marks.


Contract Functions

1. checkEligibility

function checkEligibility(uint attendance) public pure returns (bool)

Description: Checks if the student's attendance is 75% or above.

Parameters: attendance (uint) - The attendance percentage of the student.

Returns: true if attendance is 75% or above, otherwise reverts with "Not eligible for Exams".


2. setGrades

function setGrades(uint _marks) public pure returns (string memory)

Description: Assigns a grade to the student based on their marks.

Parameters: _marks (uint) - The marks obtained by the student.

Returns: A string representing the grade:

"A" for marks 90 and above

"B" for marks 80 to 89

"C" for marks 70 to 79

"D" for marks 60 to 69

"E" for marks below 60

Requirements: Marks must be between 0 and 100.

3. isFail

function isFail(uint _marks) public pure returns (bool)

Description: Checks if the student has failed based on their marks.

Parameters: _marks (uint) - The marks obtained by the student.

Returns: true if marks are below 60, otherwise false.

Assertions: Marks must be non-negative.

Prerequisites

Solidity ^0.8.0

To use this contract, you need to have a development environment set up for Solidity. You can use tools like Remix, Truffle, or Hardhat.


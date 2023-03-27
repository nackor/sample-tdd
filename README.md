# Introduction 
The simple project designed to let you practice using TDD (Test Driven Development).

# Getting Started
The purpose of the project is to implement a simple conversion function that takes an integer number and converts to a worded string (in whatever output language that you care to use for implementation though the initial test is based on English). The project source is explicitly stubbed out to a minimum implementation that only defines main program, the conversion function declaration, and two unit tests.

# Functional Specification

>## IntegerToWordedString
>
>### Description
>Converts an integer number to its equivalent worded name as string
>such as the integer number `1` being represented as the string `one`.
>
>### Synopsis
>       string IntegerToWordedString(int number);
>
>### Parameters
>   `number`  -   non-negative integer value to be converted
>
>   (return)  -   worded name equivalent of the input `number`
>
>### Notes
>The implementation as provided in the same does not define any requirements
>about how language, culture, or related concerns should / could be
>addressed by the code.

# Using TDD to Implement the Feature
This project is set up to allow you to iterate on the design and implementation using red-green-yellow TDD process. The current code of the implementation and test only has stub functionality and testing defined such that code on runs in a Not Implemented exception mode. The first unit test that should test implemented functionality is implemented without its implementation ("red" state).

Create a new git branch to work on your implementation.

To begin doing TDD using the red-green-yellow process, implement the code for IntegerToWordedString that will satisfy the first feature based unit test (the test named `One`). Write and test code until all existing unit tests succeed. Commit the changes to git.

After you are in the "green" state (all unit test pass), add **one** new unit test similar to the existing unit test `One` that will test a different input and expected result. Make sure that all tests pass **except** this one new test -- putting in the "red" state. Commit the changes to git. Write code to implement the functionality verified in the unit test until the test passes again ("green" state), then commit the changes to git.

Review the code and determine whether the code design could (or should) be improved-- if it can be improved ("yellow" state). You may want to consider things like DRY and SOLID principles, as well as run code metrics to help you evaluate the quality of the current design. If so, refactor the design and code making sure that none of changes break the existing tests. Add new tests as part of the refactoring if the new design has edge conditions or other situations that should be verified to maintain the quality of the system. Make sure to current changes to git, as your create new tests and working code.

Repeat this red-green-yellow process until you have fully implemented the full specification for the method.

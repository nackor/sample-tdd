# Introduction

The simple project designed to let you practice using TDD (Test Driven Development).

# Getting Started

The purpose of the project is to let you practice using TDD (Test-Driven Development, aka Test-Driven Design). \
To experience TDD, use the red-green-refactoring pattern to fully implement the IntegerToWordedSTring conversion function. This function takes an integer number and converts to a worded string (in whatever output language that you care to use for implementation though the initial test is based on English). The project source is explicitly stubbed out to a minimum implementation that only defines main program, the conversion function declaration, and two unit tests.

# Functional Specification

> ## IntegerToWordedString
>
> ### Description
>
> Converts an integer number to its equivalent worded name as string
> such as the integer number `1` being represented as the string `one`.
>
> ### Synopsis
>
>       string IntegerToWordedString(int number);
>
> ### Parameters
>
> `number` - non-negative integer value to be converted
>
> (return) - worded name equivalent of the input `number`
>
> ### Notes
>
> The implementation as provided in the same does not define any requirements
> about how language, culture, or related concerns should / could be
> addressed by the code.

# Developing using the Project

## Project Structure

### `sample/Program.cs`

A simple console app interface for the conversion code. The console app takes a single integer parameter and outputs the converted worded string value on the console.

### `sample/lib/Converter`

The utility class that includes the `IntegerToWordedString` as a public static function.

### `sample-tests/lib/Converter_IntegerToWordedString_Tests`

The complete set of unit tests for the `IntegerToWordedString` function that is the focus of this project. Note the starting set of unit tests contain one test `NotImplementedYet` that may be obsoleted if you implement the complete functionality or the conversionspecification.

## Building and Testing

While the system can be built and tested using different IDEs, this project was created and tested using VSCode. Testing was performed by running the full set of tests in the VSCode terminal window using `dotnet` command -- specifically, executing `dotnet test` after changing the current directory to `sample-tests` folder.

The first execution should result in final "red" state test status like:

> <span style='color:red;font-family:monospace;font-weight: bold'>Failed! - Failed: 1, Passed: 1, Skipped: 0, Total: 2</span>

# Using TDD to Implement the Feature

This document is intended to guide you through the use of Test-Driven Development (TDD) to implement a specific feature in your project while adhering to the <a href="https://martinfowler.com/bliki/Yagni.html">YAGNI</a> (You Ain't Going to Need It) principles as outlined by Martin Fowler. YAGNI emphasizes the practice of not adding functionality until it is necessary, essentially meaning you should only implement something when there is a test that requires it. This approach avoids over-engineering and keeps the design simple and focused on what is needed at present.

## Setting up for TDD

Our project is structured to facilitate iterative development using the red-green-refactor cycle of TDD. Initially, our code and tests are stubbed out to throw a Not Implemented exception, indicating functionality that exists solely in a "red" state, awaiting implementation.

## Preparing your workspace:

Create a New Git Branch: Before you start implementing your feature, create a new branch in Git. This isolates your development work from the main codebase, allowing for easy version control and review processes. You can create a new branch via the following Git command:

```
git checkout -b your-branch-name
```

## Read the Framework Documentation:

To get familiar with the unit testing framework used in this project, `xUnit`, refer to the `FRAMEWORK.md` file which is located in the same folder as this `README.md`. This document provides comprehensive guidelines and is available on your GitHub repository as well.

## Implementing the Feature Using TDD

### Start with the First Test:

Implement the `IntegerToWordedString` function which converts integers into their respective textual representations. Begin with the first unit test, which should be designed to fail initially (red state), testing the simplest case (e.g., transforming 1 to One).

### Progress through the Red-Green-Refactor Cycle:

**Red:** Write a unit test that fails because the associated functionality is not yet implemented.

**Green:** Implement the necessary functionality to pass the failing unit test.

**Commit your changes to Git:** Once the test passes, commit your changes to the current branch.

**Yellow:** Review the existing implementation for potential improvements (refactor stage). This might involve applying development principles like DRY (Don't Repeat Yourself) and SOLID. Ensure any refactoring does not break existing tests.

### Iteratively add more tests:

After your first "yellow" state, add **one** new unit test similar to the existing unit test `FirstPositiveIntegerIsOne` that will test a different input and expected result. Make sure that all tests pass **except** this one new test -- putting in the "red" state. Commit the changes to git. Write code to implement the functionality verified in the unit test until the test passes again ("green" state), then commit the changes to git. Continue this loop for as long as you need for implementing the specifications appropriately.

### Continuous Integration:

**Pull Requests and Merging:**
After completing a cycle of implementations, consider merging your branch back into the main branch through a pull request. This practice endorses Continuous Integration, continuously merging small pieces of change into the main branch, which helps catch integration bugs early and improves cohesion in collaborative environments. \
**Repeat:**
Continue with the red-green-refactor cycle until the feature is fully implemented based on the comprehensive specifications dictated by your tests.
By adhering to this structured approach, you enable a methodical implementation that adheres closely to specified requirements while maintaining high standards of code quality and coherence.

# Basic Syntax and Usage of unittest for TDD in Python

This tutorial will introduce you to the basic syntax and constructs needed to start writing unit tests with Python's `unittest` module, which is commonly used for Test-Driven Development (TDD). We'll guide you through setting up a basic unit test scenario using `unittest`, making this tutorial ideal for beginners looking to incorporate unit testing into their Python projects.

**For further in-depth information, you can refer to the following resources:**

- Python's `unittest` documentation: https://docs.python.org/3/library/unittest.html
- Real Python's guide on `unittest`: https://realpython.com/python-testing/

## Understanding unittest

Python's `unittest` module, inspired by Java’s JUnit, provides a way to create and run tests within the Python environment. It is part of the Python standard library and supports test automation, sharing of setup and shutdown code for tests, aggregation of tests into collections, and independence of the tests from the reporting framework.

### Key Components

1. **Test Case Structure:**
   In `unittest`, a test case is created by subclassing `unittest.TestCase`. Each method that is a test starts with the keyword `test`.

```py
import unittest

class TestSum(unittest.TestCase):
    def test_sum(self):
        self.assertEqual(sum([1, 2, 3]), 6, "Should be 6")
```

2. **Assertions:**
   `unittest` provides a number of methods to check for various conditions, including `assertEqual()`, `assertTrue()`, `assertFalse()`, etc.

```py
self.assertEqual(result, expected)
```

This method is used to check that the result you received matches the expected result. It is central to setting up test conditions.

### Example: Testing a Simple Addition Function

To illustrate, let's write a basic test for a function that sums a list of numbers.

1. **Implementing the Function:**

   Create a simple function outside of the test class to sum numbers:

```py
def sum_numbers(numbers):
    return sum(numbers)
```

2. **Writing Tests:**

   Implement a unit test to ensure that the `sum_numbers` function works as expected:

```py
class TestSumNumbers(unittest.TestCase):
    def test_sum(self):
        result = sum_numbers([1, 2, 3])
        self.assertEqual(result, 6)

if __name__ == "__main__":
    unittest.main()
```

### Running Tests

To run the tests, if you save your script as `test_sum.py`, you can run the following command in the terminal:

```py
python3 test_sum.py
```

### Breakdown of the Test Case

- **Test Method:** `test_sum()` calls the `sum_numbers` function with a specific list of numbers and checks that the result is correct using `self.assertEqual()`.

### Conclusion

Through this tutorial, we reviewed how to use Python's `unittest` framework. We covered the creation of a test case, assertions, and a simple practical example. `unittest`'s built-in features support robust test construction and can help improve the reliability of software by catching issues early in the development cycle.

Delving into the resources provided can offer more advanced topics and detailed explanations for creating comprehensive test suites in Python.

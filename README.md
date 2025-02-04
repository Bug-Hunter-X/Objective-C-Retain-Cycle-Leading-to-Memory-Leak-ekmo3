# Objective-C Retain Cycle Bug

This repository demonstrates a common Objective-C bug involving retain cycles and memory leaks. The `bug.m` file contains code that creates a retain cycle between two objects.  The `bugSolution.m` file shows how to fix this issue using `weak` properties.

## How to Reproduce

1. Clone this repository.
2. Open the project in Xcode.
3. Run the application. (Note: You might need to use Instruments to observe the memory leak directly.)

## Solution

The solution involves using `weak` references to break the retain cycle.  See `bugSolution.m` for a corrected implementation.
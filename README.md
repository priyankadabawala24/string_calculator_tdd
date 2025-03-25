# README

String Calculator TDD Kata

Introduction

    String Calculator is a simple Ruby lib class that performs addition on numbers provided as strings, following the rules defined below:
        1. Create a simple String calculator with a method signature like this:

            int add(string numbers)
            
            Input: a string of comma-separated numbers
            Output: an integer, sum of the numbers
        
            Examples:

                Input: “”, Output: 0
                Input: “1”, Output: 1
                Input: “1,5”, Output: 6
        
        2. Allow the add method to handle any amount of numbers.

        3. Allow the add method to handle new lines between numbers (instead of commas). ("1\n2,3" should return 6)

        4. Support different delimiters:

            To change the delimiter, the beginning of the string will contain a separate line that looks like this: "//[delimiter]\n[numbers…]". For example, "//;\n1;2" where the delimiter is ";" should return 3.
        
        5. Calling add with a negative number will throw an exception: "negative numbers not allowed <negative_number>".

            If there are multiple negative numbers, show all of them in the exception message, separated by commas.
            
Versions (25/03/2025)
    Ruby - ruby-3.2.6
    Rails - 7.1.5
    BUNDLED WITH - 2.5.23

Installation
    1. Clone the repository:
        https://github.com/priyankadabawala24/string_calculator_tdd.git
    2. Go to project folder
        cd string_calculator_tdd
    3. Install dependencies 
        bundle install

Usage 
    1. Open Rails Console
        rails c -e development
    2. Examples
        p StringCalculator.add("1,2,3")  # Output: 6
        p StringCalculator.add("//;\n1;2")  # Output: 3
    
Running Tests
    rspec --format documentation

    Expected Result
        StringCalculator
            #add
                returns 0 for an empty string
                returns the number itself for a single number
                returns the sum of two comma-separated numbers
                returns the sum of more than two comma-separated numbers
                handles new line as a separator
                supports different delimiters specified at the beginning
                raises an exception for negative numbers

            Finished in 0.00181 seconds (files took 0.0496 seconds to load)
            7 examples, 0 failures

TDD Development Workflow

The project follows the Red-Green-Refactor cycle:

    Red: Write a failing test

    Green: Implement minimal code to pass the test

    Refactor: Clean up code while ensuring tests still pass

Contributing

    Fork the repository.

    Create a feature branch (git checkout -b feature-name).

    Commit your changes.

    Push to the branch and open a Pull Request.

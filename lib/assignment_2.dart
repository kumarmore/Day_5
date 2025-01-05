    // 2 . Exception Handling
    // Write a Dart program to handle exceptions:----
    // Prompt the user to enter a number.
    // Attempt to divide 100 by the entered number.
    // Handle potential errors like division by zero and invalid inputs (non-numeric
    // values) using try, catch, and finally.
    // Ensure the program doesn’t crash and always prints a message in the finally
    // block.


    import 'dart:io';

    void main() {
      try {
        // Prompt the user for input
        print("Enter a number:");
        String? input = stdin.readLineSync(); // Read user input

        if (input == null || input.isEmpty) {
          throw FormatException("Input cannot be empty.");
        }

        // Convert the input to a number
        int number = int.parse(input);

        // Attempt to divide 100 by the entered number
        double result = 100 / number;
        print("100 divided by $number is $result");
      } on FormatException catch (e) {
        // Handle non-numeric input
        print("Error: Invalid input. Please enter a valid number.");
        print("Details: ${e.message}");
      } on IntegerDivisionByZeroException {
        // Handle division by zero
        print("Error: Division by zero is not allowed.");
      } catch (e) {
        // Handle any other exceptions
        print("An unexpected error occurred: $e");
      } finally {
        // Always executed
        print("Thank you for using the program.");
      }
    }

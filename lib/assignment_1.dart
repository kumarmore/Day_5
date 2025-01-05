// 1. Functions in Dart
// Write a Dart program to create the following:--
// A named function greetUser(String name) that returns a greeting message
// like "Hello, [name]!".
// An anonymous function that calculates the square of a number and print the
// result.
// Test both functions with appropriate inputs. in dart



void main() {
  // Named function to greet a user
  String greetUser(String name) {
    return "Hello, $name!";
  }

  // Test the named function
  String greeting = greetUser("Krantikumar");
  print(greeting);

  // Anonymous function to calculate the square of a number
  var square = (int number) {
    print("The square of $number is ${number * number}");
  };

  // Test the anonymous function
  square(5);
}

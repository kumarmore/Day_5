// 3. Dart’s Async and Await Basics
// Create a program with the following:--
// A function fetchData() that simulates fetching data from a server using
// Future.delayed (2 seconds delay).
// Use async and await to call fetchData() and print "Data fetched
// successfully!" after the delay.
// Include proper error handling if the fetchData operation fails.

import 'dart:async';

Future<String> fetchData() async {
  try {
    // Simulating a delay as if fetching data from a server
    await Future.delayed(Duration(seconds: 2));

    // Simulating a successful data fetch
    return 'Data fetched successfully!';
  } catch (e) {
    // Handling any errors that may occur during the fetch operation
    throw 'Failed to fetch data: $e';
  }
}

void main() async {
  try {
    // Calling the fetchData function and awaiting the result
    String result = await fetchData();
    print(result);  // Printing success message
  } catch (e) {
    // Handling errors from fetchData
    print(e);
  }
}

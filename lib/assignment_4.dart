// 4. Combining Concepts
// Combine what you’ve learned:----
// Create a named function that calls an async function to fetch a list of items
// (simulate this with Future.delayed).
// Add error handling in case fetching fails.
// Use an anonymous function to iterate over the fetched list and print each
// item.
// Test your program with at least 3 items in the list.

import 'dart:async';

// Async function to simulate fetching a list of items
Future<List<String>> fetchItems() async {
  try {
    // Simulating a 2-second delay to fetch data
    await Future.delayed(Duration(seconds: 2));

    // Simulating a successful fetch of 3 items
    return ['Product 1', 'Product 2', 'Product 3'];
  } catch (e) {
    // Handling any errors that may occur during the fetch operation
    throw 'Failed to fetch items: $e';
  }
}

// Named function to call the async fetchItems function
void fetchDataAndDisplay() async {
  try {
    // Fetching the list of items and awaiting the result
    List<String> items = await fetchItems();

    // Using an anonymous function to iterate over the list and print each item
    items.forEach((item) {
      print(item);  // Printing each item
    });
  } catch (e) {
    // Handling errors from fetchItems
    print(e);
  }
}

void main() {
  // Calling the named function to fetch data and display the items
  fetchDataAndDisplay();
}

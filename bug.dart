```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, process the JSON data
      final jsonData = json.decode(response.body);
      // Use the jsonData 
      print(jsonData); 
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e'); 
    rethrow; // Re-throw to allow handling up the call stack
  }
}
```
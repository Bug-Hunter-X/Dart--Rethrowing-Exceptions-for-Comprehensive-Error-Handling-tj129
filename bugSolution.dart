```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      print(jsonData);
    } else {
      // More specific error handling based on HTTP status code
      throw HttpException('HTTP request failed with status: ${response.statusCode}', uri: Uri.parse('https://api.example.com/data'));
    }
  } on SocketException catch (e) {
    //Handle Socket exceptions separately
    print('Socket exception: $e');
  } on FormatException catch (e) {
    //Handle JSON format exceptions separately
    print('JSON format exception: $e');
  } catch (e) {
    // Handle other exceptions
    print('An unexpected error occurred: $e');
  }
}
```
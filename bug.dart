```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Here's where the error might occur if the JSON is malformed.
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions here.
    print('Error fetching data: $e');
    // Re-throw the exception to be handled higher up if needed.
    rethrow; 
  }
}
```
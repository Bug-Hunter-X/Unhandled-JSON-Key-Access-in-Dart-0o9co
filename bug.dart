```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON
      final jsonData = jsonDecode(response.body);
      // Accessing a non-existent key can throw an exception
      final value = jsonData['nonExistentKey']; 
      print(value);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Re-throwing the exception to be handled by a higher level
    rethrow; 
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    print('Error in main function: $e');
  }
}
```
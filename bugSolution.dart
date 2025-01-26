```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Safely access the key using null-aware operator
      final value = jsonData['nonExistentKey']; 
      //Check if value is not null before printing it
      if(value != null) {
        print(value);
      } else {
        print("Key 'nonExistentKey' not found in JSON");
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
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
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:reader_tracker/models/book.dart';

class Network {
  static const String _baseUrl = 'https://www.googleapis.com/books/v1/volumes?';
  Future<List<Book>> searchBooks(String query) async {
    final response = await http.get(Uri.parse('$_baseUrl&q=$query'));
    
    if (response.statusCode == 200) {
     
      final data = json.decode(response.body);
      return (data['items'] as List<dynamic>)
          .map((item) => Book.fromJson(item))
          .toList();
    } else {
     return[];
    }
  }
}
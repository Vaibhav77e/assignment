import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/jsonPlace.dart';

class RequestData with ChangeNotifier {
  List<JsonPlace> _jsData = [];
  List<JsonPlace> get jsData {
    return [..._jsData];
  }

  Future<void> postData(String title) async {
    const url = 'https://jsonplaceholder.typicode.com/photos/1.json';
    try {
      final res = await http.post(Uri.parse(url),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode({
            'id': 1,
            'title': title,
            'thumbnailUrl':
                'https://www.google.com/s2/favicons?sz=64&domain_url=yahoo.com'
          }));
      print(res.body);
      if (res.statusCode == 200) {
        print('working');
      } else {
        print('not working');
      }
      notifyListeners();
    } catch (e) {
      print(e.toString());
    }
  }
}

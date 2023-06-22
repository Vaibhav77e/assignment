import 'dart:convert';
import 'package:assgin_ui/widgets/showSnackBar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/jsonPlace.dart';

class RequestData with ChangeNotifier {
  List<JsonPlace> _jsData = [];

  List newData = [
    ['title', 'https://www.google.com/s2/favicons?sz=64&domain_url=yahoo.com'],
  ];

  void addData(String text, BuildContext context) {
    newData.add([
      text.toString(),
      'https://www.google.com/s2/favicons?sz=64&domain_url=yahoo.com'
    ]);
    Navigator.of(context).pop();
    notifyListeners();
  }

  List<JsonPlace> get jsData {
    return [..._jsData];
  }

  // Perform an HTTP GET request
  Future<void> fetchData() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var data = response.body;

      print('Response: $data');
      notifyListeners();
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
  }

// Perform an HTTP POST request
  Future<void> sendData(String title, BuildContext context) async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var body = {
      'id': '2',
      'title': title,
      'thumbnailUrl':
          'https://www.google.com/s2/favicons?sz=64&domain_url=yahoo.com'
    };
    var response = await http.post(url, body: body);

    if (response.statusCode == 201) {
      var data = response.body;
      var parsedData = JsonPlace.fromJson(json.decode(data));
      title = parsedData.title;
      addData(title, context);
      showSnack(context, 'Sucessfull added');
      notifyListeners();
      // print('Thumbnail URL: ${parsedData.thumbnailUrl}');
    } else {
      showSnack(context, 'Sucessfull added');
      notifyListeners();

      print('Request failed with status: ${response.statusCode}');
    }
  }
}

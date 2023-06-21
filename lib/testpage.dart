import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './service/request.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<RequestData>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => data.postData('newData'), child: Text('Click'))
          ],
        ),
      ),
    );
  }
}

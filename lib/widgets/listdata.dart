import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  String text;
  String imageUrl;

  ListData({required this.text, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        height: 60,
        width: 400,
        decoration: BoxDecoration(
            color: Color.fromARGB(241, 244, 237, 237),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey)),
        child: Row(
          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: 20,
              child: Image.network(imageUrl),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: const TextStyle(overflow: TextOverflow.fade, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

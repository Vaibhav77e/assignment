import 'package:flutter/material.dart';

showSnack(BuildContext context, String text) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.grey,
      content: Text(
        text,
        style: TextStyle(color: Colors.black),
      )));
}

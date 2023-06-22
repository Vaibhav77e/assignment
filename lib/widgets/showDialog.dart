import 'package:flutter/material.dart';

void showDialogBox(
    {required BuildContext context,
    // required String text,
    required void Function()? onPressed,
    required TextEditingController? controller}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            hintText: 'Comment',
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(12))),
      ),
      actions: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              backgroundColor: const Color.fromARGB(255, 39, 96, 194),
              foregroundColor: Colors.white,
            ),
            onPressed: onPressed,
            child: const Text(
              'Add',
            )),
      ],
    ),
  );
}

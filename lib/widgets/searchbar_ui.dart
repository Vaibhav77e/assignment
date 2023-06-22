import 'package:flutter/material.dart';

class CsearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
              ),
            ],
            border: Border.all(
              color: Colors.grey,
            ),
            color: const Color.fromARGB(241, 244, 237, 237),
            borderRadius: BorderRadius.circular(30)),
        child: SizedBox(
          width: 100,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                  )),
              const Text(
                'Search',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

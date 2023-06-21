import 'package:assgin_ui/widgets/listdata.dart';
import 'package:assgin_ui/widgets/showDialog.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  TextEditingController controllerText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: 900,
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(26)),
                        child: const Text(
                          'Add Comments',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        //  alignment: Alignment.center,
                        height: 125,
                        child: Image.asset(
                          'assets/credit_card_rbg.png',
                          //  alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
                //search bar ui
                Padding(
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
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                    //height: 500,
                    child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, i) => Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child:
                                  ListData(text: 'text', imageUrl: 'imageUrl'),
                            )))
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialogBox(
            context: context, controller: controllerText, onPressed: () {}),
        child: const Icon(Icons.add),
      ),
    );
  }
}

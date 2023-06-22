import 'package:assgin_ui/widgets/listdata.dart';
import 'package:assgin_ui/widgets/showDialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './service/request.dart';
import './widgets/searchbar_ui.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  TextEditingController controllerText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<RequestData>(context);

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
                        height: 125,
                        child: Image.asset(
                          'assets/credit_card_rbg.png',
                        ),
                      ),
                    ],
                  ),
                ),
                //search bar ui
                CsearchBar(),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                    //height: 500,
                    child: data.newData.isEmpty
                        ? const SizedBox(child: Text('Add Data'))
                        : ListView.builder(
                            itemCount: data.newData.length,
                            itemBuilder: (context, i) => Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: ListData(
                                      text: data.newData[i][0].toString(),
                                      imageUrl:
                                          'https://www.google.com/s2/favicons?sz=64&domain_url=yahoo.com'),
                                )))
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialogBox(
          context: context,
          controller: controllerText,
          onPressed: () => data.sendData(controllerText.text, context),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}

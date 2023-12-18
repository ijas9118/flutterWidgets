import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  List<String> fruits = ["Orange", "Apple", "Mango", "Banana"];
  Map fruitsPerson = {
    "fruits": ["Orange", "Apple", "Mango", "Banana"],
    "names": ["Isha", "Jean", "Jefin", "Jeeva"],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'List and Grid',
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                print((fruitsPerson["fruits"][index]));
              },
              leading: Icon(Icons.person_2_rounded),
              title: Text(fruitsPerson["fruits"][index]),
              subtitle: Text(fruitsPerson["names"][index]),
            ),
          );
        },
      ),
    );
  }
}

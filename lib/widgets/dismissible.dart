import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fruits = ['Orange', 'Apple', 'Mango', 'Banana', 'Grapes'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Dismissible Widget',
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
          final fruit = fruits[index];
          return Dismissible(
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.red,
                  ),
                );
              }
              else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.green,
                  ),
                );
              }
            },
            key: Key(fruit),
            background: Container(color: Colors.red),
            secondaryBackground: Container(color: Colors.green),
            child: Card(
              child: ListTile(
                title: Text(fruits[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}

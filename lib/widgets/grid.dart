import 'package:flutter/material.dart';

class GridWidget extends StatefulWidget {
  const GridWidget({super.key});

  @override
  State<GridWidget> createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {
  List<String> fruits = ["Orange", "Apple", "Mango", "Banana"];
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
      body:
          /* GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2 / 3,
            ),
            children: [
              Card(
                child: Center(
                  child: Text("Orange"),
                ),
              ),
              Card(
                child: Center(
                  child: Text("Orange"),
                ),
              ),
              Card(
                child: Center(
                  child: Text("Orange"),
                ),
              ),
            ],
          ),  */
          GridView.builder(
        itemCount: fruits.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Card(
            child: Center(
              child: Text(fruits[index]),
            ),
          );
        },
      ),
    );
  }
}

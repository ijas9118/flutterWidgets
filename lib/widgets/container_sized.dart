import 'package:flutter/material.dart';
import 'package:widgets/reusable_button.dart';

class Containers extends StatelessWidget {
  const Containers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Containers and SizedBox',
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.pink,
                // shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(20),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 10,
                    color: Colors.pink.shade900,
                  ),
                ],
              ),
              child: Center(
                child: Container(
                  color: Colors.pink.shade300,
                ),
                // Text("HELLO", style: TextStyle(fontSize: 20)),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Button(
            onPressed: () {
              Navigator.pop(context);
            },
            name: "Go back!",
          ),
        ],
      ),
      // Center(child: SizedBox(height: 100, width: 50, child: Text('Hello'))),
    );
  }
}

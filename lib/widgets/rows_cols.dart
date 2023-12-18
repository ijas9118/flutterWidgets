import 'package:flutter/material.dart';
import 'package:widgets/reusable_button.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    // var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Rows and Columns',
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
        children: [
          Container(
            height: 200,
            width: w,
            color: Colors.yellow.shade700,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.red.shade300,
                  height: 60,
                  width: 60,
                ),
                Container(
                  color: Colors.red.shade400,
                  height: 60,
                  width: 60,
                ),
                Container(
                  color: Colors.red.shade600,
                  height: 60,
                  width: 60,
                ),
                Container(
                  color: Colors.red.shade800,
                  height: 60,
                  width: 60,
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.teal.shade700,
            child: Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              children: [
                Container(
                  color: Colors.red.shade300,
                  height: 60,
                  width: 60,
                ),
                Container(
                  color: Colors.red.shade400,
                  height: 60,
                  width: 60,
                ),
                Container(
                  color: Colors.red.shade600,
                  height: 60,
                  width: 60,
                ),
                Container(
                  color: Colors.pink.shade300,
                  height: 60,
                  width: 60,
                ),
                Container(
                  color: Colors.pink.shade500,
                  height: 60,
                  width: 60,
                ),
                Container(
                  color: Colors.pink.shade700,
                  height: 60,
                  width: 60,
                )
              ],
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:widgets/reusable_button.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Buttons",
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 30),
                ),
                overlayColor: MaterialStateProperty.all(Colors.pink.shade300),
                elevation: MaterialStateProperty.all(20),
                backgroundColor:
                    MaterialStateProperty.all(Colors.pink.shade600),
              ),
              child: const Text(
                "Press me",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 30),
                ),
                overlayColor: MaterialStateProperty.all(Colors.pink.shade300),
                elevation: MaterialStateProperty.all(20),
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColor),
              ),
              onPressed: () {},
              child: const Text(
                "Press me",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                ),
              ),
            ),
            SizedBox(
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
      ),
    );
  }
}

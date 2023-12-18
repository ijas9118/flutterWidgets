import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Bottom Sheet Widget',
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
        child: ElevatedButton(
          onPressed: () {
            _displayBottomSheet(context);
          },
          child: const Text("Show Bottom Sheet"),
        ),
      ),
    );
  }
}

Future _displayBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: Theme.of(context).primaryColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    // isDismissible: false,
    // enableDrag: false,
    context: context,
    builder: (context) {
      return const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text("Hello World"),
            subtitle: Text('This is a bottom sheet'),
          ),
          ListTile(
            title: Text("Orange"),
            subtitle: Text('This is a good fruit'),
          ),
          ListTile(
            title: Text("Apple"),
            subtitle: Text('This is a nice fruit'),
          ),
          ListTile(
            title: Text("Grapes"),
            subtitle: Text('This is a juicy fruit'),
          ),
          ListTile(
            title: Text("Banana"),
            subtitle: Text('This is a cool fruit'),
          ),
        ],
      );
    },
  );
}

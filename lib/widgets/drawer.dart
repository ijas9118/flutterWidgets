import 'package:flutter/material.dart';
import 'package:widgets/reusable_button.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  // color: Colors.deepPurple.shade100,
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            "https://imgs.search.brave.com/htdn_5BMJtLiHZ-6zItpF7NO9EeeS_UUZ-_tpjpvGxo/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9w/b3J0cmFpdC1kYXJr/LXNraW5uZWQtY2hl/ZXJmdWwtd29tYW4t/d2l0aC1jdXJseS1o/YWlyLXRvdWNoZXMt/Y2hpbi1nZW50bHkt/bGF1Z2hzLWhhcHBp/bHktZW5qb3lzLWRh/eS1vZmYtZmVlbHMt/aGFwcHktZW50aHVz/aWFzdGljLWhlYXJz/LXNvbWV0aGluZy1w/b3NpdGl2ZS13ZWFy/cy1jYXN1YWwtYmx1/ZS10dXJ0bGVuZWNr/XzI3MzYwOS00MzQ0/My5qcGc"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Luna Blake",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("luna.blake@gmail.com")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.folder),
                title: Text("My Files"),
              ),
              const ListTile(
                leading: Icon(Icons.group),
                title: Text("Shared With Me"),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text("Starred"),
              ),
              const ListTile(
                leading: Icon(Icons.delete),
                title: Text("Trash"),
              ),
              const ListTile(
                leading: Icon(Icons.upload),
                title: Text("Uploads"),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Drawer Widget',
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
            const Text("Hello World"),
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
      ),
    );
  }
}

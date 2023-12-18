import 'package:flutter/material.dart';
import 'package:widgets/reusable_button.dart';
import 'package:widgets/widgets/alert.dart';
import 'package:widgets/widgets/animated.dart';
import 'package:widgets/widgets/bottomNavigation/bottom_nav.dart';
import 'package:widgets/widgets/bottom_sheet.dart';
import 'package:widgets/widgets/button.dart';
import 'package:widgets/widgets/container_sized.dart';
import 'package:widgets/widgets/dismissible.dart';
import 'package:widgets/widgets/drawer.dart';
import 'package:widgets/widgets/drop_down.dart';
import 'package:widgets/widgets/forms.dart';
import 'package:widgets/widgets/grid.dart';
import 'package:widgets/widgets/image.dart';
import 'package:widgets/widgets/list.dart';
import 'package:widgets/widgets/rows_cols.dart';
import 'package:widgets/widgets/snackbar.dart';
import 'package:widgets/widgets/stack.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
      ),
      title: 'Widgets',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Center(
          child: Text("FLUTTER WIDGETS"),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Containers(),
                ),
              );
            },
            name: "Containers",
          ),
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RowsCols(),
                ),
              );
            },
            name: "Rows & Columns",
          ),
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ButtonWidget(),
                ),
              );
            },
            name: "Buttons",
          ),
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListWidget(),
                ),
              );
            },
            name: "List",
          ),
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GridWidget(),
                ),
              );
            },
            name: "Grid",
          ),
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SnackBarWidget(),
                ),
              );
            },
            name: "SnackBar",
          ),
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DismissibleWidget(),
                ),
              );
            },
            name: "Dismissible",
          ),
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DrawerWidget(),
                ),
              );
            },
            name: "Drawer",
          ),
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ImageWidget(),
                ),
              );
            },
            name: "Image",
          ),
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AlertWidget(),
                ),
              );
            },
            name: "Alert",
          ),
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BottomSheetWidget(),
                ),
              );
            },
            name: "BottomSheet",
          ),
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimatedTextWidget(),
                ),
              );
            },
            name: "Animated Text",
          ),
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BottomNav(),
                ),
              );
            },
            name: "Bottom Navigation",
          ),
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DropDownWidget(),
                ),
              );
            },
            name: "Drop Down",
          ),
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FormWidget(),
                ),
              );
            },
            name: "Form",
          ),
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StackWidget(),
                ),
              );
            },
            name: "Stack",
          ),
        ],
      ),
    );
  }
}

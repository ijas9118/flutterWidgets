import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();
  String firstName = "";
  String lastName = "";
  String email = "";
  String password = "";

  trysubmit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      submitForm();
    } else {
      print("Error");
    }
  }

  submitForm() {
    print(firstName);
    print(lastName);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Form Widget',
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
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter first name',
                  ),
                  key: const ValueKey('firstName'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'First name should not empty.';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    firstName = newValue.toString();
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter last name',
                  ),
                  key: const ValueKey('lastName'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Last name should not empty.';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    lastName = newValue.toString();
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter email',
                  ),
                  key: const ValueKey('email'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'email should not empty.';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    email = newValue.toString();
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Enter password',
                  ),
                  key: const ValueKey('password'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Password should not empty.';
                    } else if (value.toString().length <= 5) {
                      return 'Minimum length of password should be 6';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    password = newValue.toString();
                  },
                ),
                TextButton(
                  onPressed: () {
                    trysubmit();
                  },
                  child: const Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

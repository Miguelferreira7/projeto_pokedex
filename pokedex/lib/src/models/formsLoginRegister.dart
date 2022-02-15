import 'package:flutter/material.dart';
import 'package:pokedex/src/screens/login/login.dart';

class Formsregistration extends StatelessWidget {
  const Formsregistration(
      {required this.nameField, required this.controller, required this.icon});

  final String nameField;
  final TextEditingController controller;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFieldContainer(
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            icon: Icon(icon),
            labelText: nameField,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
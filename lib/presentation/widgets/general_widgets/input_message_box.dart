import 'package:flutter/material.dart';

class InputMessageBox extends StatelessWidget {
  const InputMessageBox({super.key});

  @override
  Widget build(BuildContext context) {
  

    final outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

   final inputDecoration =  InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: outlineInputBorder.borderRadius,
          borderSide: outlineInputBorder.borderSide,
        ),
        filled: true,
        suffixIcon: IconButton(icon: const Icon(Icons.send), onPressed: () {}),
      );



    return TextFormField(
        decoration: inputDecoration,
    );
  }
}

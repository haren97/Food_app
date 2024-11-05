import 'package:flutter/material.dart';

class MyTextfeild extends StatelessWidget {
  const MyTextfeild(
      {super.key,
      required this.myObscureText,
      this.suffixicon,
      required this.hinttext,
      required this.labletext,
      this.prefixicon});
  final bool myObscureText;
  final Widget? suffixicon;
  final Widget? prefixicon;
  final String hinttext;
  final String labletext;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: myObscureText,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        labelText: labletext,
        floatingLabelStyle: const TextStyle(color: Colors.black),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        prefixIcon: prefixicon,
        suffixIcon: suffixicon,
        hintText: hinttext,
        hintStyle: TextStyle(color: Colors.grey[400], fontSize: 15),
        focusColor: Colors.blueGrey,
        enabled: true,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        filled: true,
        fillColor: const Color.fromARGB(255, 239, 243, 245),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
    );
  }
}


import 'dart:ffi';

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String lable;
  final IconData icons;
  final bool obscureText;
  final TextEditingController Onchange;
  const MyTextField({super.key, required this.lable, required this.icons, required this.Onchange,required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: Onchange,
            obscureText: obscureText,
            decoration: InputDecoration(

              prefixIcon: Icon(icons),
              fillColor: Colors.blueGrey,
              filled: true,

              hintText: lable,
              hintStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),

              ),
            ),
          ),
        )
      ],
    );
  }
}

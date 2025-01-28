import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
  cursorColor: KprimaryColor,
      decoration: InputDecoration(
        hintText: "Title",
        hintStyle: TextStyle(color: KprimaryColor),
        border: buildoutlineborder(),
        enabledBorder: buildoutlineborder(),
        focusedBorder: buildoutlineborder(KprimaryColor)
      ),
    );
  }

  OutlineInputBorder buildoutlineborder([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide( color:Color?? Colors.white)
      );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.text, required this.maxline});
  final String text;
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxline,
      cursorColor: KprimaryColor,
      decoration: InputDecoration(
        
          hintText: text,
      
          border: buildoutlineborder(),
          enabledBorder: buildoutlineborder(),
          focusedBorder: buildoutlineborder(KprimaryColor)),
    );
  }

  OutlineInputBorder buildoutlineborder([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(color: Color ?? Colors.white));
  }
}

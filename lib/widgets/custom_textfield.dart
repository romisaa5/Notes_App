import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key, required this.text, required this.maxline, this.onsaved, this.onchange});
  final String text;
  final int maxline;
  final void Function(String?)? onsaved;
  final void Function(String)? onchange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'the field is required';
        } else {
          return null;
        }
      },
      onChanged:onchange  ,
      onSaved: onsaved,
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

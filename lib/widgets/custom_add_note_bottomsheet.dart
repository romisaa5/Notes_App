import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_textfield.dart';

class CustomAddNoteBottomsheet extends StatelessWidget {
  const CustomAddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomTextfield()
          ], 
         ),
      ),
    );
  }
}
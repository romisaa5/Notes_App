import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_textfield.dart';

class CustomAddNoteBottomsheet extends StatelessWidget {
  const CustomAddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CustomTextfield(text: 'Title',maxline: 1,),
              SizedBox(
                height: 20,
              ),
                      CustomTextfield(text: 'Descripition',maxline: 5,),
                       SizedBox(
                height: 50
              ),
              CustomButton(),
                  SizedBox(
                height: 20
              ),
            ], 
           ),
        ),
      ),
    );
  }
}
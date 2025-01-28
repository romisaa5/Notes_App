import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_textfield.dart';
import 'package:note_app/widgets/custum_appbar.dart';

class CustomEditNote       extends StatelessWidget {
  const CustomEditNote  ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          CustumAppbar(
            text:'Edit Note'
            ,
            icon:Icons.check
             ,

             
          ),
            SizedBox(
            height: 20
          ),
          CustomTextfield(text: 'Title', maxline: 1),
          SizedBox(
            height: 18
          ),
          CustomTextfield(text: 'Description'    , maxline: 5)
        ],
      ),
    )
    ;
  }
}
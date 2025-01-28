import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_edit_note.dart';

class    EditNoteView       extends StatelessWidget {
  const   EditNoteView    ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomEditNote()
      ,
    )
    ;
  }
}
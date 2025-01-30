import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/widgets/custom_add_note_bottomsheet.dart';
import 'package:note_app/widgets/notes_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
              context: context,
              builder: (context) {
                return CustomAddNoteBottomsheet();
              });
        },
        child: Icon(Icons.add,color: Colors.black,),
        backgroundColor: KprimaryColor,
      ),
    );
  }
}

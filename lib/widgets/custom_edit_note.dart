import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_textfield.dart';
import 'package:note_app/widgets/custum_appbar.dart';

class CustomEditNote extends StatefulWidget {
  const CustomEditNote({super.key, required this.note});
  final NotesModel note;

  @override
  State<CustomEditNote> createState() => _CustomEditNoteState();
}

class _CustomEditNoteState extends State<CustomEditNote> {
  String? content, title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          CustumAppbar(
            text: 'Edit Note',
            icon: Icons.check,
            onpressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
               BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 20),
          CustomTextfield(
              onchange: (value) {
                title = value;
              },
              text:widget.note.title        ,
              maxline: 1),
          SizedBox(height: 18),
          CustomTextfield(
              onchange: (value) {
                content = value;
              },
              text:widget.note.subtitle                ,
              maxline: 5)
        ],
      ),
    );
  }
}

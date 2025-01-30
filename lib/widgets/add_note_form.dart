import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/notes_cubits.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_textfield.dart';

class FormAddNote extends StatefulWidget {
  const FormAddNote({
    super.key,
  });

  @override
  State<FormAddNote> createState() => _FormAddNoteState();
}

class _FormAddNoteState extends State<FormAddNote> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomTextfield(
            onsaved: (value) {
              title = value;
            },
            text: 'Title',
            maxline: 1,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextfield(
            onsaved: (value) {
              subtitle = value;
            },
            text: 'Descripition',
            maxline: 5,
          ),
          SizedBox(height: 50),
          CustomButton(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var notemodel = NotesModel(title: title!, subtitle: subtitle!, date: DateTime.now().toString(), color: Colors.lightBlue.value);
                BlocProvider.of<NotesCubit>(context).addNote(notemodel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

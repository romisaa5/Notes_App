import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_note_cubit/notes_cubits.dart';
import 'package:note_app/cubits/add_note_cubit/notes_state.dart';
import 'package:note_app/widgets/add_note_form.dart';

class CustomAddNoteBottomsheet extends StatelessWidget {
  const CustomAddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>NotesCubit(),
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: BlocConsumer<NotesCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteFailure) {
                print('failed ${state.errormassege}');
              }
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                  inAsyncCall: state is AddNoteLoading ? true : false,
                  child: SingleChildScrollView(child: FormAddNote()));
            },
          ),
        ),
      ),
    );
  }
}

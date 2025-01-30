import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/notes_cubits.dart';
import 'package:note_app/cubits/add_note_cubit/notes_state.dart';
import 'package:note_app/widgets/add_note_form.dart';

class CustomAddNoteBottomsheet extends StatelessWidget {
  const CustomAddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Container(
        child: BlocConsumer<AddNotesCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print('failed ${state.errormassege}');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: Padding(
                padding: EdgeInsets.only(
                    right: 16.0,
                    left: 16,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SingleChildScrollView(child: FormAddNote()),
              ),
            );
          },
        ),
      ),
    );
  }
}

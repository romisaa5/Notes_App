import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

import 'notes_state.dart';
import 'package:bloc/bloc.dart';

class AddNotesCubit extends Cubit<AddNoteState> {
  AddNotesCubit() : super(AddNoteInitial());
  Color color = Color(0xffD4B2D8);
  addNote(NotesModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var notesbox = Hive.box<NotesModel>(kNotesbox);

      await notesbox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}

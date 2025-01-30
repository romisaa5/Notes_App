import 'package:hive/hive.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

import 'notes_state.dart';
import 'package:bloc/bloc.dart';

class AddNotesCubit extends Cubit<AddNoteState> {
  AddNotesCubit() : super(AddNoteInitial());

  addNote(NotesModel note) async {
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

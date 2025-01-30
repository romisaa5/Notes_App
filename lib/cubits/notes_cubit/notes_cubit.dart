import 'package:hive/hive.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

import 'notes_state.dart';
import 'package:bloc/bloc.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NotesModel>? notes;
  fetchAllNotes() async {
    var notesbox = Hive.box<NotesModel>(kNotesbox);
    notes = notesbox.values.toList();
    emit(NotesSuccess());
  }
}

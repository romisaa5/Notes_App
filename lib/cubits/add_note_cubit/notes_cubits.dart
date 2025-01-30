import 'package:hive/hive.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

import 'notes_state.dart';
import 'package:bloc/bloc.dart';

class NotesCubit extends Cubit<AddNoteState> {
  NotesCubit() : super(AddNoteInitial());
 

  addNote(NotesModel note) async {
    
    emit(AddNoteLoading());
    try {
      var notesbox = Hive.box<NotesModel>(kNotesbox);
     
      emit(AddNoteSuccess());
      await notesbox.add(note);
    } catch (e) {
         
      AddNoteFailure(e.toString());
    }
  }
}

import 'notes_state.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class NotesCubit extends Cubit<AddNoteState> {
  NotesCubit() : super(AddNoteInitial());
}

import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NotesModel> notes;

  NotesSuccess( this.notes);
}

class NotesFailure extends NotesState {
  final String errormassege;
  NotesFailure(this.errormassege);
}

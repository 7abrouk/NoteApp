part of 'notes_cubit.dart';

import 'package:note_app/models/note_model.dart';

abstract class NotesStates {}

class NotesInitial extends NotesStates {}

class NotesLoading extends NotesStates {}

class NotesSuccess extends NotesStates {
  final List<NoteModel> notes;

  NotesSuccess(this.notes);
}

class NotesFailiure extends NotesStates {
  final String errMessage;

  NotesFailiure({required this.errMessage});
}

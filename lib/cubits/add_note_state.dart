

abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailiure extends AddNoteState {
  final String errMessage;

  AddNoteFailiure(this.errMessage);
}

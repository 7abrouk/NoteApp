import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/cubits/notes_states.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/constants.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit(super.initialState);

  fetchNotes(NoteModel note) {
    emit(NotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailiure(errMessage: (e).toString()));
    }
  }
}

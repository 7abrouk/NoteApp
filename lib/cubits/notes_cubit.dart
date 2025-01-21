import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/cubits/notes_states.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/constants.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
     notes = notesBox.values.toList();
  }
}

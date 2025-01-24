import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, content;
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 32,
          ),
          CustomTextField(

            controller: TextEditingController(text: widget.note.title),
              onChanged: (value) {
                title = value;
              },
              hintText: 'title',
              maxLines: 1,),
          SizedBox(
            height: 10,
          ),
          Text(widget.note.date,style: TextStyle(color: Colors.grey),),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: CustomTextField(
              controller: TextEditingController(text: widget.note.subTitle),
              onChanged: (value) {
                
                content = value;
              },
              hintText: "your note",
              maxLines: 10,
            ),
          ),
        ],
      ),
    );
  }
}

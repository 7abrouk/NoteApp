import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_state.dart';
import 'package:note_app/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailiure) {
            print('failed ${state.errMessage}');
          }
          if (state is AddNoteSuccess) {
            return Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing:state is AddNoteLoading ? true : false,
            child: const AddNoteForm());
        },
      ),
    );
  }
}

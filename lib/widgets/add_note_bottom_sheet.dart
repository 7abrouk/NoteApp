import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              maxLines: 10,
              hintText: 'Content',
            ),
           SizedBox(height: 32,),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}


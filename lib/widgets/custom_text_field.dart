import 'package:flutter/material.dart';
import 'package:note_app/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, this.maxLines = 1, this.onSaved});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: Color(kPrimaryColor),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(Color(kPrimaryColor)),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}

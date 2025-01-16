import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap,  this.isLoading =false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.deepPurple,
        ),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(
            child: isLoading ? SizedBox(
              height: 25,
              width: 25,
              child: const CircularProgressIndicator(
                color: Colors.grey,
                
              ),
            ) : Text(
          'Add',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white.withOpacity(.5)),
        )),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 45,
      width: 45,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.1),
        
      ),
      child: Center(child: Icon(Icons.search)),
    );
  }
}
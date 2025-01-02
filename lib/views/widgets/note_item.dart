import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top: 24,bottom: 24,left: 16),
      decoration: BoxDecoration(
        color:const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Your Note',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16,bottom: 16),
              child: Text(
                'Let your note here',
                style:
                    TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 18),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black,size: 30,)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(
              'Dec 27/2024',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/widgets/custum_appbar.dart';

class NotesViewBody
 extends StatelessWidget {
  const NotesViewBody
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          CustumAppbar(),
        ],
      ),
    );
  }
}
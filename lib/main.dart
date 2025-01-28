import 'package:flutter/material.dart';
import 'package:note_app/views/note_view.dart';

void main() {
  runApp(const Notes_app());
}

class Notes_app extends StatelessWidget {
  const Notes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness:Brightness.dark,fontFamily: 'Poppins' ),
      home: NoteView(),
    );
  }
}

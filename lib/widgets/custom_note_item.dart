import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});
  final NotesModel note;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(note.title), // Unique key for each note
      direction: DismissDirection.endToStart, // Swipe from right to left
      background: Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: Colors.red, // Background color when swiping
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          FontAwesomeIcons.trash,
          color: Colors.white,
          size: 30,
        ),
      ),
      confirmDismiss: (direction) async {
        return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Confirm Deletion"),
            content: Text("Are you sure you want to delete this note?"),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text("Cancel"),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text("Delete", style: TextStyle(color: const Color.fromARGB(255, 224, 75, 64))),
              ),
            ],
          ),
        );
      },
      onDismissed: (direction) {
        note.delete(); // Delete note from database
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(backgroundColor: KprimaryColor,
            content: Text("Note deleted successfully")),
        );
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return EditNoteView();
          }));
        },
        child: Container(
          padding: const EdgeInsets.only(top: 24.0, bottom: 24, left: 16),
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                  child: Text(
                    note.subtitle,
                    style: TextStyle(
                        color: Colors.black.withOpacity(.5), fontSize: 18),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Note deleted")),
                      );
                    },
                    icon: Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.black,
                      size: 24,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Text(
                  note.date,
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

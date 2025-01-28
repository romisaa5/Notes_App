import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';

class CustumAppbar extends StatelessWidget {
  const CustumAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 100,
        ),
        Text('Notes',style: TextStyle(fontSize: 26),),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}

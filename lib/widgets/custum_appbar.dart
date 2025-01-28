import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';

class CustumAppbar extends StatelessWidget {
  const CustumAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 85,
        ),
        Text('Notes',style: TextStyle(fontSize: 26),),
        Spacer(),
        CustomSearchIcon(),
        
      ],
    );
  }
}

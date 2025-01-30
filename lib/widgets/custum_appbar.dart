import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';

class CustumAppbar extends StatelessWidget {
  const CustumAppbar({super.key, required this.text, required this.icon, this.onpressed});
  final String text;
  final IconData    icon;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 95,
        ),
        Text(
       text  ,
          style: TextStyle(fontSize: 26),
        ),
        Spacer(),
        CustomSearchIcon(
          onpressed:onpressed ,
          icon:icon
        ),
      ],
    );
  }
}

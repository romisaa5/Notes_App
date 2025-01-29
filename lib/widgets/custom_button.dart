import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.ontap});
final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap ,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: KprimaryColor,
          borderRadius: BorderRadius.circular(8),
      
        ),
        child: Center(child: Text('save',style: TextStyle(color: Colors.black,
        fontSize: 18
                  )))
      ),
    );
  }
}

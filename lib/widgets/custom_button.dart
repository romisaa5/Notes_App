import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.ontap, this.isloading=false});
  final void Function()? ontap;
  final bool isloading ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 55,
          decoration: BoxDecoration(
            color: KprimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
              child:isloading?SizedBox(
                height: 25,
                width: 25,
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              ): Text('Add',
                  style: TextStyle(color: Colors.black, fontSize: 18)))),
    );
  }
}

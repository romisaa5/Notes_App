import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.only(top: 24.0,bottom: 24,left: 16),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text('Flutter course',style: TextStyle(color:Colors.black,fontSize: 26),),
            
            subtitle:Padding(
              padding: const EdgeInsets.only(top: 16.0,bottom: 16),
              child: Text('created by Romisaa Fadel',style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 18),),
            ),
            trailing: IconButton(onPressed: (){}, icon:Icon( FontAwesomeIcons.trash,color:Colors.black ,size: 24,)),
          
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Text('1May 2005',style:TextStyle(color: Colors.black.withOpacity(.5),fontSize: 16) ,),
          )
        ],
      ),
      
    );
  }
}
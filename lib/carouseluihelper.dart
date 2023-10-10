

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsapp_ui_practice/secondscreen.dart';


class CarouselContainer{
  static CustomContainer(String img,VoidCallback callback){
    return Stack(
      children:[Padding(
        padding: const EdgeInsets.only(left: 10),
        child: InkWell(
          onTap: (){callback();},
          child: Container(
            height: 350,
            width: 400,
            clipBehavior: Clip.antiAlias,
            child: Image.network(img,fit: BoxFit.cover,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),

            ),
          ),
        ),


      ),
        Positioned(
          top: 20,
          left: 220,
          child: Column(

           children: [
             Container(
               height: 40,
               width: 80,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
               child: Center(
                 child: Row(mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     FaIcon(FontAwesomeIcons.earth,color: Colors.blue,),
                     Text('World',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black),),
                   ],
                 ),
               ),
             ),
             SizedBox(height: 60,),



           ],
          ),
        ),

         Positioned(top: 89,left: 5,
             child:
             Text('  More storms hit central US with\n  tornadoes and severe winds\n  while the West and   North \n  brace for more rain and snow.'

                 ,
               style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),))
      ],
      
    );
  }
}
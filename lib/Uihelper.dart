import 'package:flutter/material.dart';

class Uihelper{
  static CustomCircleAvatar(IconData iconData){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(blurRadius: 10,color: Colors.grey,spreadRadius: 1)]
      ),
      child: CircleAvatar(
        radius: 25,
        child: Icon(iconData),
        backgroundColor: Colors.white,
      ),
    );
  }

  static Customcontainer(IconData? iconData,IconData? iconData1 ){
    return Container(
      height: 70,
      width: 105,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey.shade100,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(radius: 25,child: Icon(iconData),backgroundColor: Colors.white,),
          CircleAvatar(radius: 25,child: Icon(iconData1),backgroundColor: Colors.white,),
        ],
      ),
    );
  }
  static CustomContainer(){}
}
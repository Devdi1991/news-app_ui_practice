import 'package:flutter/material.dart';
import 'package:newsapp_ui_practice/FirstPage.dart';

class LandScreen extends StatefulWidget {
  const LandScreen({super.key});

  @override
  State<LandScreen> createState() => _LandScreenState();
}

class _LandScreenState extends State<LandScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
       children: [
         Container(
         height: double.infinity,
       width: double.infinity,


       decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
       child: Image.network('https://st.depositphotos.com/1011643/3491/i/950/depositphotos_34910965-stock-photo-news-reporter-live-broadcasting-on.jpg',fit: BoxFit.cover,),
     ),
         Positioned(
           top: 490,left: 18,
           child: Column(
             children: [
               Text('Stay Informed \nfrom  Day  One',
                 style:TextStyle(fontSize: 50,
                     fontWeight: FontWeight.bold,
                   color: Colors.white

                 ) ,
               ),
               Text('Discover the Latest News with our\nSeamless Onboarding Experience',
               style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color:Colors.white,)),
               SizedBox(height: 30,),
               SizedBox(height: 60,width: 360,
                 child: ElevatedButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage()));
                 },
                     child: Text('Getting Started',style: TextStyle(fontSize: 25,color: Colors.white),),
                   style: ElevatedButton.styleFrom(primary: Colors.blue)
                 ),
               )



             ],
           ),
         )
       ],
     ),
    );
  }
}

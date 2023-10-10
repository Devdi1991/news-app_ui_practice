import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newsapp_ui_practice/landscreen.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context)=>LandScreen())); });
    
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,

        child: Lottie.asset('assets/animations/Animation - 1696436705812.json'),

      ),
    );
  }
}

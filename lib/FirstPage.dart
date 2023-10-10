import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:newsapp_ui_practice/Uihelper.dart';
import 'package:newsapp_ui_practice/carouseluihelper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsapp_ui_practice/secondscreen.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var arrMap=[
    {"subject":"Politics",'IconData':FontAwesomeIcons.weightScale},
    {"subject":"Sports",'IconData':FontAwesomeIcons.baseball},
    {"subject":"Music",'IconData':FontAwesomeIcons.music},
    {"subject":"Science",'IconData':FontAwesomeIcons.satellite},
  ];
  int? selectcolor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: SizedBox(
            height: 890,
            width: 3000,
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Uihelper.CustomCircleAvatar(Icons.list),
                    Uihelper.Customcontainer(Icons.search_off_outlined, Icons.notifications)
                  ],
                ),
                SizedBox(height: 30,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Breaking News',
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                    Text('Show more',
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                CarouselSlider(items: [
                  CarouselContainer.CustomContainer('https://media.cnn.com/api/v1/images/stellar/prod/230112134747-05-southeast-storms-0112-selma.jpg?c=original',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));}),
                  CarouselContainer.CustomContainer('https://media.cnn.com/api/v1/images/stellar/prod/230112134747-05-southeast-storms-0112-selma.jpg?c=original',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));}),
                  CarouselContainer.CustomContainer('https://media.cnn.com/api/v1/images/stellar/prod/230112134747-05-southeast-storms-0112-selma.jpg?c=original',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));}),
                  CarouselContainer.CustomContainer('https://media.cnn.com/api/v1/images/stellar/prod/230112134747-05-southeast-storms-0112-selma.jpg?c=original',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));}),
                  CarouselContainer.CustomContainer('https://media.cnn.com/api/v1/images/stellar/prod/230112134747-05-southeast-storms-0112-selma.jpg?c=original',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));}),
                  CarouselContainer.CustomContainer('https://media.cnn.com/api/v1/images/stellar/prod/230112134747-05-southeast-storms-0112-selma.jpg?c=original',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));}),
                  CarouselContainer.CustomContainer('https://media.cnn.com/api/v1/images/stellar/prod/230112134747-05-southeast-storms-0112-selma.jpg?c=original',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));}),
                  CarouselContainer.CustomContainer('https://media.cnn.com/api/v1/images/stellar/prod/230112134747-05-southeast-storms-0112-selma.jpg?c=original',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));}),
                  CarouselContainer.CustomContainer('https://media.cnn.com/api/v1/images/stellar/prod/230112134747-05-southeast-storms-0112-selma.jpg?c=original',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));}),

                ], options: CarouselOptions(

                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 600),
                  pauseAutoPlayOnTouch: true,
                  scrollDirection: Axis.horizontal,
                  enlargeCenterPage: true,
                  autoPlayCurve:Curves.bounceOut,

                )),
              SizedBox(height: 10,),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: arrMap.length,
                  itemBuilder: (context, index) { return
    Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              onTap: (){
                setState(() {
                   selectcolor=index;
              });
              },
              child: Container(
              height: 80,
              width: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                color: index==selectcolor?Colors.blue:Colors.white
              ),

                  child: Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(arrMap[index]['IconData'] as IconData)
              ,
              Text(arrMap[index]['subject'].toString()),
              ],
              )),
              ),
            ),
    );
    }
    ,),
              ),
                SizedBox(height: 30,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                [
                  Text('Breaking News',
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),
                  ),

                  Text('Show more',
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey),
                  ),
                ],
                ),
                SizedBox(height: 20,),
                Card(
                  child: ListTile(
                    leading: Container(height: 200,width: 100,
                    clipBehavior: Clip.antiAlias,
                    child: Image.network('https://e1.pxfuel.com/desktop-wallpaper/671/608/desktop-wallpaper-football-stadium-wall-mural-football-ground-thumbnail.jpg',fit: BoxFit.cover,),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    ),),
                    title:Text('Fifa announces new regulations\nto tackle racism in football ',
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
                    color: Colors.black),) ,
                    subtitle:Row(
                      children: [CircleAvatar(radius:10,
                        child: Image.network('https://t4.ftcdn.net/jpg/04/33/37/67/360_F_433376723_ifkpzuy2GBFHlcoBGVzEDmmC39XyIbPq.jpg'),),
                        Text('Krystin watson'),
                      Text('  .sports')],
                    ) ,
                  ),
                ),

                SizedBox(height: 5,),
                Card(
                  child: ListTile(
                    leading: Container(height: 200,width: 100,
                      clipBehavior: Clip.antiAlias,
                      child: Image.network('https://e1.pxfuel.com/desktop-wallpaper/671/608/desktop-wallpaper-football-stadium-wall-mural-football-ground-thumbnail.jpg',fit: BoxFit.cover,),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      ),),
                    title:Text('Fifa announces new regulations\nto tackle racism in football ',
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
                          color: Colors.black),) ,
                    subtitle:Row(
                      children: [CircleAvatar(radius:10,
                        child: Image.network('https://t4.ftcdn.net/jpg/04/33/37/67/360_F_433376723_ifkpzuy2GBFHlcoBGVzEDmmC39XyIbPq.jpg'),),
                        Text('Krystin watson'),
                        Text('  .sports')],
                    ) ,

                  ),
                ),

                SizedBox(height: 5,),
                Card(
                  child: ListTile(
                    leading: Container(height: 200,width: 100,
                      clipBehavior: Clip.antiAlias,
                      child: Image.network('https://e1.pxfuel.com/desktop-wallpaper/671/608/desktop-wallpaper-football-stadium-wall-mural-football-ground-thumbnail.jpg',fit: BoxFit.cover,),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      ),),
                    title:Text('Fifa announces new regulations\nto tackle racism in football ',
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
                          color: Colors.black),) ,
                    subtitle:Row(
                      children: [CircleAvatar(radius:10,
                        child: Image.network('https://t4.ftcdn.net/jpg/04/33/37/67/360_F_433376723_ifkpzuy2GBFHlcoBGVzEDmmC39XyIbPq.jpg'),),
                        Text('Krystin watson'),
                        Text('  .sports')],
                    ) ,

                  ),
                ),






              ],
            ),
          ),
        ),
      )
    );
  }
}

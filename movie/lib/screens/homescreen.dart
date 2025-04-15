import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movie/models/movies.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen>{
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    double deviceHeight =MediaQuery.sizeOf(context).height;
    double deviceWidth =MediaQuery.sizeOf(context).width;
    // TODO: implement build
    return Scaffold(
      body: SizedBox(
        height: deviceHeight,
        width: deviceWidth,
        child:Stack(
          children: [
            Image(image: NetworkImage(movielist[currentIndex].image),fit: BoxFit.cover,width: deviceWidth,height: deviceHeight*0.70,),
           Positioned(
             bottom: 0,
             left: 0,
             right: 0,
             child: Container(
               width: deviceWidth,
               height: deviceHeight*0.65,
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                     begin: Alignment.bottomCenter,
                     end: Alignment.topCenter,
                     colors:[
                       Colors.grey.shade50.withAlpha(255), // solid at top
                       Colors.grey.shade50.withAlpha(255), // solid at top
                       Colors.grey.shade50.withAlpha(255), // solid at top
                       Colors.grey.shade50.withAlpha(255), // solid at top
                       Colors.grey.shade50.withAlpha(255), // solid at top
                       Colors.grey.shade50.withAlpha(255), // solid at top
                       Colors.grey.shade50.withAlpha(255), // solid at top
                       Colors.grey.shade50.withAlpha(255), // solid at top
                       Colors.grey.shade50.withAlpha(255), // solid at top
                       Colors.grey.shade50.withAlpha(255), // solid at top
                       Colors.grey.shade50.withAlpha(230),
                       Colors.grey.shade50.withAlpha(230),
                       Colors.grey.shade50.withAlpha(120),
                       Colors.grey.shade50.withAlpha(120),
                       Colors.grey.shade50.withAlpha(120),
                       Colors.grey.shade50.withAlpha(120),
                       Colors.grey.shade50.withAlpha(60),
                       Colors.grey.shade50.withAlpha(0),
                     ])
               ),
             ),
           ),
           Positioned(
             bottom: 5,
             height: deviceHeight*0.6,
               width: deviceWidth,
               child: CarouselSlider(
                   options: CarouselOptions(
                     height: deviceHeight*0.60,
                     // animateToClosest: true,
                     enlargeCenterPage: true,
                     viewportFraction: 0.7,
                     onPageChanged: (index,reason){
                       setState(() {
                         currentIndex=index;
                       });
                     }
                   ),
                   items: movielist.map((film){
                     return Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         width: deviceWidth,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Colors.white,
                         ),
                         child:Column(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Container(
                               margin: EdgeInsets.all(5),
                               height: deviceHeight*0.35,
                               width: deviceWidth,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(20),
                                 image: DecorationImage(image:NetworkImage(film.image),fit: BoxFit.cover)
                               ),
                             ),
                             SizedBox(height: 8,),
                             Text(film.title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                             SizedBox(height: 8,),
                             Text(film.director,style: TextStyle(color: Colors.black38,fontSize: 15),),
                             SizedBox(height: 8,),
                             AnimatedOpacity(
                               duration: Duration(milliseconds: 1000),
                               opacity: currentIndex==movielist.indexOf(film)?1.0 : 0.0 ,
                               child: Container(
                                 padding: EdgeInsets.symmetric(horizontal: 10),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     Row(
                                       children: [
                                         Icon(Icons.star,color: Colors.yellow,),
                                         SizedBox(width: 2,),
                                         Text(film.ratings,style: TextStyle(color: Colors.black),)
                                       ],
                                     ),
                                     Row(
                                       children: [
                                         Icon(Icons.access_time_filled,color: Colors.black38),
                                         SizedBox(width: 2,),
                                         Text(film.duration,style: TextStyle(color: Colors.black))
                                       ],
                                     ),
                                     Row(
                                       children: [
                                         Icon(Icons.play_circle_sharp,color: Colors.black,),
                                         SizedBox(width: 2,),
                                         Text('Watch',style: TextStyle(color: Colors.black))
                                       ],
                                     ),
                               
                                   ],
                                 ),
                               ),
                             )

                           ],
                         ),
                       ),
                     );
                   }).toList(),
                   ))
          ],

        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:learning_platform/utils/colors_design.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    double deviceHeight=MediaQuery.sizeOf(context).height;
    double deviceWidth=MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Padding(
        padding: const EdgeInsets.only(top:40),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:15,right:15,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Boxicons.bx_menu_alt_left,size: 40,color: primaryColor,),
                  Icon(Boxicons.bx_search_alt,size: 40,color: primaryColor,),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left:15,right:15,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Hi Bose',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Colors.black),),
                          Text('👋',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

                        ],
                      ),
                      SizedBox(height: 4,),
                      Text('Code your dreams in silence,\n let success echo loud.',style: TextStyle(color: Colors.black38,fontSize: 15),)
                    ],
                  ),
                  Image(image: AssetImage('assets/images/studying_pic.png'),height: 150,width: 170,filterQuality: FilterQuality.high,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15,right:15,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 5,
                    color:primaryColor,
                    child: SizedBox(
                      height: 40,
                      width: 100,
                      child: Center(
                        child: Text('Popular',style: TextStyle(color:secondaryColor,fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                  Text('AIML',style: TextStyle(color:primaryColor,fontSize: 18,fontWeight: FontWeight.bold),),
                  Text('Cyber security',style: TextStyle(color:primaryColor,fontSize: 18,fontWeight: FontWeight.bold),),
                  Icon(Icons.tune,size: 28,color: primaryColor,)
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(left:15,right:15,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                  Text('see all',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.blue),),
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: [
                        0.0,0.28
                      ],
                      colors: [
                    Colors.black38,Color(0XFFffebd1)
                    ],
                  )
                ),
                width: deviceWidth,
                child: Stack(
                  children: [
                    Positioned(left: 20,top: 12,child: coursesDesign(200.0, 'assets/images/programming.jpg'),),
                    Positioned(right: 20,top: 12,child: coursesDesign(200.0, 'assets/images/graphic design.jpg'),),
                    Positioned(right: 20,top: 220,child: coursesDesign(170.0, 'assets/images/finance.jpg'),),
                    Positioned(left: 20,top: 220,child: coursesDesign(200.0, 'assets/images/UX-design-courses.jpg'),),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child:Container(
                        height: deviceHeight*0.12,
                        width: deviceWidth,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Card(
                              color: primaryColor,
                              elevation: 2,
                              child: SizedBox(
                                height: 50,
                                width: 50,
                                child: Icon(Icons.home,color: secondaryColor,size: 35,),
                              ),
                            ),
                            Icon(Icons.watch_later,color: primaryColor,size: 35,),
                            Icon(Icons.favorite_rounded,color: primaryColor,size: 35,),
                            Icon(Icons.person,color: primaryColor,size: 35,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }

  SizedBox coursesDesign(height,link) {
    return SizedBox(
                  height: height,
                  width: 180,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(link,fit: BoxFit.fitHeight,),
                  )
                );
  }
}
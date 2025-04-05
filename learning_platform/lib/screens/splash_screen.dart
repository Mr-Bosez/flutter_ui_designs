import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learning_platform/screens/homepage.dart';
import 'package:learning_platform/utils/colors_design.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen>{
  @override
  Widget build(BuildContext context) {
    double deviceHeight=MediaQuery.sizeOf(context).height;
    double deviceWidth=MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SizedBox(
        height: deviceHeight,
        width: deviceWidth,
        child:Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: deviceWidth,
                  height: deviceHeight*0.70,
                  decoration: BoxDecoration(
                      color: secondaryColor
                  ),
                ),
                Container(
                  width: deviceWidth,
                  height: deviceHeight*0.70,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/a boy.jpg'),fit: BoxFit.cover,filterQuality: FilterQuality.high),
                      color: Colors.black,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(80))
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: deviceWidth,
                height: deviceHeight*0.30,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: deviceWidth,
                height: deviceHeight*0.30,
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(80))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.bookOpenReader,size: 30,color: primaryColor,),
                      Center(child: Text('Learning Everywhere',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 26),)),
                      SizedBox(height: deviceHeight*0.015,),
                      Center(child: Text('Learn with pleasure with\n us, wherever you are! ',style: TextStyle(color:Colors.black,fontWeight: FontWeight.w800,fontSize: 17),)),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 30,right: 20,bottom: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: primaryColor,width: 3),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: primaryColor,width: 3)
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 16,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: primaryColor
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                              },
                              child: Container(
                                height: 60,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: primaryColor
                                ),
                                child: Center(
                                  child: Text('Get Started',style: TextStyle(color: secondaryColor,fontSize: 18,fontWeight: FontWeight.bold),),
                                ),
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:best_flutter_ui_templates/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class UserProfile extends StatefulWidget {
   @override
   _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
   @override
   void initState() {
       super.initState();
   }

   @override
   Widget build(BuildContext context) {
       return Container(
           color: Colors.lightBlueAccent,
           child: SafeArea(
               top: false,
               bottom: false,
               child: Scaffold(

                   backgroundColor: AppTheme.nearlyWhite,
                       body:Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.stretch,children: <Widget>[
                           // TODO: Expand Container down
                           Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        // Where the linear gradient begins and ends
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        // Add one stop for each color. Stops should increase from 0 to 1
                                        //stops: [0.1, 0.5, 0.7, 0.9],
                                        colors: [
                                            // Colors are easy thanks to Flutter's Colors class.
                                            Colors.blueAccent,
                                            Colors.white,
                                        ],
                                    ),
                                ),
                               padding: EdgeInsets.only(
                                   top: MediaQuery.of(context).padding.top,
                                   left: 25,
                                   right: 25,
                               bottom: MediaQuery.of(context).padding.bottom),


                               height: 320,
                               width: 320,

                               child: Image.asset("assets/images/userImage.png",
                                       fit: BoxFit.fitHeight,
                                   ),
                               ),
                               Container(
                                   padding: EdgeInsets.only(
                                       //top: 7,
                                       bottom: 15,
                                   ),
                                   child: Divider(
                                       indent: 50,
                                       endIndent: 50,
                                       color: Colors.black,
                                       thickness: 4.5,
                                   ),
                               ),
                               Container(
                                   child:

                                   Text(
                                   'Your Name',
                                   style: TextStyle(
                                       //fontStyle: ,
                                       fontSize: 35,
                                       fontWeight: FontWeight.bold,
                                   ),
                                       textAlign: TextAlign.center,
                               ),
                           ),
                           Container(
                               padding: EdgeInsets.only(top: 25),
                               child: Text(
                                   'Loyalty Meter',
                                   style: TextStyle(
                                       //fontFamily: ,
                                       fontSize: 25,
                                       fontWeight: FontWeight.bold,
                                   ),
                                   textAlign: TextAlign.center,
                               ),
                           ),
                           Container(
                               child: Padding(
                                   padding: EdgeInsets.only(
                                       top: 10,
                                       left: 15,
                                       right: 15.0),
                                   child:
                                   new LinearPercentIndicator(
                                       width: MediaQuery.of(context).size.width - 50,
                                       animation: true,
                                       lineHeight: 20.0,
                                       animationDuration: 2000,
                                       percent: 0.9,
                                       center: Text("90.0%"),

                                       linearStrokeCap: LinearStrokeCap.roundAll,
                                       linearGradient:LinearGradient(
                                       // Where the linear gradient begins and ends
                                       begin: Alignment.centerLeft,
                                       end: Alignment.centerRight,
                                       // Add one stop for each color. Stops should increase from 0 to 1
                                       //stops: [0.1, 0.5, 0.7, 0.9],
                                       colors: [
                                           // Colors are easy thanks to Flutter's Colors class.
                                           Colors.blueAccent,
                                           Colors.lightBlueAccent,
                                       ],
                                   ),
                                   ),


                           ),
                           ),
                       ]),
                        )
           ),

       );
   }
}

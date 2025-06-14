import 'package:dashboard_project_new/utilis/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
          body:ListView(
                    children: [
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  maxRadius: 30,
                                  backgroundImage: AssetImage("assets/images/Mayor1.png"),
                                ),
                                Text("Welcome Back", style: AppStyles.headLineStyle1,), 
                                SizedBox(height:10 ,),
                                Text("Oyeyemi Mayokun", style: AppStyles.headLineStyle3,), 
                                SizedBox(height:15 ,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.key, color: Colors.white,),
                                    SizedBox(width:5 ,),
                                    Text("Passcode", style: TextStyle(color: Colors.grey),)
                                  ],
                                )

                              ],
                            ),
                          ),
                    ],
          )
    );
  }
}
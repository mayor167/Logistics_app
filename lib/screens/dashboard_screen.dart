import 'package:dashboard_project_new/screens/eflier_screen.dart';
import 'package:dashboard_project_new/utilis/app_layout.dart';
import 'package:dashboard_project_new/utilis/app_styles.dart';
import 'package:dashboard_project_new/widgets/custom_circle_avatar_widget.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1b1b1b),
      body: ListView(
              children: [
                //background image container
                Container(
                 
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  height: 185,
                  width: double.infinity,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                   color: Color(0xFF080b05),
                    image: DecorationImage(
                      opacity: 0.1,
                      image: AssetImage("assets/images/fast_delivery_boy.png"),
                      fit: BoxFit.contain
                      )
                  ),
                  child: Column(
                        children: [
                          //row1
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // color: Colors.red,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                     maxRadius: 20,
                                     backgroundColor: Color(0xFF262626),
                                     child: Icon(
                                      FluentIcons.location_24_regular, color: AppStyles.iconColor,),
                                            ),
                                     Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                       child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                         Text("Oyeyemi Mayokun", style: AppStyles.headLineStyle4),
                                         SizedBox(height: 1,),
                                         Text("New York", style: AppStyles.headLineStyle3,)
                                                                           ],
                                        ),
                                     ),
                                      
                                  ],
                                ),
                              ),
                                CircleAvatar(
                                     maxRadius: 20,
                                     backgroundColor: Color(0xFF262626),
                                     backgroundImage: AssetImage("assets/images/Mayor1.jpg"),
                                        ), 
                            ],
                          ),
                          SizedBox(height: 10,),
                          //row2
                               Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF262626),
                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                  ),
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFc3c3c3),),
                                          SizedBox(width: 2,),
                                         Text("Search package", style: TextStyle(color: Color(0xFF7a7d7c)),),
                                      ],
                                    ),
                                  ),
                              
                                CircleAvatar(
                                       maxRadius: 18,
                                       backgroundColor: Color(0xFF303030),
                                       child: Icon(
                                        FluentIcons.eye_tracking_24_regular, color: AppStyles.iconColor,),
                                              ),
                              ],
                             ),
                           ),
                           SizedBox(height:15,),
                           //row 3
                           Container(
                           margin: EdgeInsets.symmetric(horizontal: 10),
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.40,
                                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    gradient: LinearGradient(
                                            colors: [
                                               Color(0xFFff8753),
                                              Color(0xFFff783d),
                                             
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                          ),
                                   child: Row(
                                    children: [
                                       CircleAvatar(
                                         maxRadius: 15,
                                         backgroundColor:  Colors.black87,
                                         child: Icon(
                                          FluentIcons.luggage_24_regular, color: Colors.white,),
                                                ),
                                                SizedBox(width: 5,),
                                                Text("New Delivery", style: AppStyles.headLineStyle3.copyWith(color:Colors.white, fontSize: 12, fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),
                                 Container(
                                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                  decoration: BoxDecoration(
                                     borderRadius: BorderRadius.all(Radius.circular(20)),
                                     color: Color(0xFF262626),
                                  ),
                                   width: MediaQuery.of(context).size.width * 0.40,
                                  
                                   child: Row(
                                    children: [
                                       CircleAvatar(
                                         maxRadius: 15,
                                         backgroundColor: Colors.black87,
                                         child: Icon(
                                          FluentIcons.eye_tracking_24_regular, color: AppStyles.iconColor,),
                                                ),
                                              SizedBox(width: 5,),
                                                Text("Track Package",style: AppStyles.headLineStyle3.copyWith(color:Colors.white, fontSize: 12, fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),
                              ],
                             ),
                           ),
                        ],
                  ),
                ),
                  //Image E-flier slider conatainer
                 EflierScreen(),
                 //row after image slider
                 Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        CustomCircleAvatarWidget(icon: FluentIcons.location_24_regular, label: "Check Rate",),
                        CustomCircleAvatarWidget(icon: FluentIcons.location_24_regular, label: "Location",),
                        CustomCircleAvatarWidget(icon: FluentIcons.location_24_regular, label: "Vehicles info",),
                        CustomCircleAvatarWidget(icon: FluentIcons.location_24_regular, label: "Goods weight",),
                    ],
                   ),
                 ),
                 //Recent Shipping container
                 Container(
                  height: MediaQuery.of(context).size.height*0.30,
                  color:Colors.red,
                 )
              ],
      ),
    );
  }
}
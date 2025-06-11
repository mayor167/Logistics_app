import 'package:dashboard_project_new/utilis/app_styles.dart';
import 'package:flutter/material.dart';

class AssignmentDashboard extends StatelessWidget {
  const AssignmentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf4f7fd),
      body:ListView(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.38,
                    width: double.infinity,
                    color: Color(0xFF3f3bee),
                    child: Column(
                      children: [
                        //row one in the parent blue container
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                       Text("Dashboard", style: AppStyles.headLineStyle1,),
                                        Text("Good Afternoon", style:AppStyles.headLineStyle4. copyWith(color: Color(0xFF8688fb))),
                                                 ],
                                        ),
                                        CircleAvatar(
                                        backgroundColor: Colors.white,
                                        maxRadius: 20,
                                        child: Image.asset("assets/images/avatar.png"),
                                                     ),
                                      ],
                                      ),
                          ),
                      //  Divider(color: Color(0xFF8688fb),),
                          //container with top and bottom border only
                          Container(
                           padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                            // height: 20,
                            decoration: BoxDecoration(
                                    // color: Colors.red,
                                      border: Border(
                                        top: BorderSide(
                                          color: Color(0xFF8688fb), 
                                        ),
                                        bottom: BorderSide(
                                          color: Color(0xFF8688fb),
                                        
                                        ),
                                      ),
                                       ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                          //column1
                                        Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Wallet Balance",style:AppStyles.headLineStyle4.copyWith(color:Color(0xFF8688fb), fontSize: 10 )),
                                               Text("\$9,782.42",style:AppStyles.headLineStyle3.copyWith(color:Color(0xFFdce2fc),fontSize: 20, fontWeight: FontWeight.bold)),
                                            ],
                                        ),
                                          //column2
                                        Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Cards Active",style:AppStyles.headLineStyle4.copyWith(color:Color(0xFF8688fb), fontSize: 10 )),
                                               Text("3",style:AppStyles.headLineStyle3.copyWith(color:Color(0xFFdce2fc),fontSize: 20, fontWeight: FontWeight.bold)),
                                            ],
                                        ),
                                          //column3
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 7),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                                  color:Color(0xFFf6f8fa),
                                                ),
                                                child: Text("Edit ID",style:AppStyles.headLineStyle4.copyWith(color:Color(0xFFada9dc), fontSize: 10 ))),
                                              
                                            ],
                                        ),
                                        
                                  ],
                            ),
                            
                          ),
                       
                          SingleChildScrollView(
                             padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                //the white card conatiner
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                  height: 100,
                                  width: MediaQuery.of(context).size.width*.70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xFFfefdfe),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                  Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                  Text("Card Balance",style:AppStyles.headLineStyle4.copyWith(color:Color(0xFFb5b5b5), fontSize: 10 )),
                                                  Text("\$9,782.42",style:AppStyles.headLineStyle3.copyWith(color:Color(0xFF8a89f4),fontSize: 20, fontWeight: FontWeight.bold)),
                                                ],
                                            ),
                                            
                                                Container(
                                                  width: 100,
                                                  // color: Colors.red,
                                                  child: Image.asset("assets/images/signature.png", fit: BoxFit.contain,opacity:AlwaysStoppedAnimation(0.5),)),
                                              ],
                                            ),
                                          Container(
                                            padding: EdgeInsets.symmetric(horizontal: 5),
                                            child: Row(
                                              children: [
                                                Text("****     ****     ****     ****", style: AppStyles.headLineStyle2.copyWith(color: Color(0xFF635ddc), fontWeight: FontWeight.w900, fontSize: 10),)
                                              ],
                                            ),
                                          )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20,),
                                // light blue card container
                                Container(
                                   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                  height: 80,
                                  width: MediaQuery.of(context).size.width*.70,
                                  decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(15),
                                    color: Color(0xFF8b89f7),
                                  ),
                                    child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                  Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                  Text("Card Balance",style:AppStyles.headLineStyle4.copyWith(color:Color(0xFF3d3bf1), fontSize: 10 )),
                                                  Text("\$9,782.42",style:AppStyles.headLineStyle3.copyWith(color:Color(0xFF6b65e2),fontSize: 20, fontWeight: FontWeight.bold)),
                                                ],
                                            ),
                                            
                                                Container(
                                                  width: 100,
                                                  // color: Colors.red,
                                                  child: Image.asset("assets/images/signature.png", fit: BoxFit.contain,opacity:AlwaysStoppedAnimation(0.5),)),
                                              ],
                                            ),
                                          Container(
                                            padding: EdgeInsets.symmetric(horizontal: 5),
                                            child: Row(
                                              children: [
                                                Text("****     ****     ****     ****", style: AppStyles.headLineStyle2.copyWith(color: Color(0xFF3d3bf1), fontWeight: FontWeight.w900, fontSize: 10),)
                                              ],
                                            ),
                                          )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                      ],
                    ),
                  ),
                  
                ],
      ) ,
    );
  }
}
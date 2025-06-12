import 'package:dashboard_project_new/utilis/app_styles.dart';
import 'package:flutter/material.dart';

class WhiteTransactionCardWidget extends StatelessWidget {
  final String number;
  final String name;
  final String amount;
  final String stackNumber;
  const WhiteTransactionCardWidget({super.key, required this.number, required this.name, required this.amount, required this.stackNumber });

  @override
  Widget build(BuildContext context) {
    return   Stack(
                        children: [
                              Container(
                                    margin: EdgeInsets.symmetric(horizontal: 10),
                                    height: MediaQuery.of(context).size.height*.16,
                                    width: MediaQuery.of(context).size.width*.26,
                                    // width: 50,
                                    decoration: BoxDecoration(
                                    color: Color(0xFFffffff),
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                     boxShadow:[ BoxShadow(
                                                  color: Colors.grey.withOpacity(0.5), 
                                                  spreadRadius: 1, 
                                                  blurRadius: 5,
                                                  )  
                                                ],
                                                ),
                                  child:Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(horizontal: 10),
                                            // color: Colors.red,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                    Text(number, style: AppStyles.headLineStyle1.copyWith(fontSize: 20, color: Color(0xFF455cb5)),),
                                                      SizedBox(height: 52,),
                                                      Text(name, style: AppStyles.headLineStyle4.copyWith(color: Color(0xFF878fd1), 
                                                      fontWeight:FontWeight.w900,)),
                                              ],
                                            ),
                                          ),
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 34),
                                          child:Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(amount, style: AppStyles.headLineStyle4.copyWith(color:Color(0xFFb8b7b6), fontSize: 8)),
                                            ],
                                          ),
                                      ),
                                    ],
                                  ) ,
                          
                              ),
                              Positioned(
                                top: -32,
                                right: 5,
                                child: Row(
                                children: [
                                  Text(stackNumber, style: AppStyles.headLineStyle1.copyWith(color: Color(0xFFf1f1fc), fontSize: 90),)
                                ],
                              ))
                        ]
                      );
  }
}
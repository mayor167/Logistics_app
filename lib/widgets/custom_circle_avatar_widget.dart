import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class CustomCircleAvatarWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final double radius;
  final Color backgroundColor;
   final Color iconColor;
  final Color textColor;
 const CustomCircleAvatarWidget({super.key, required this.icon, required this.label, this.radius=38, this.backgroundColor=const Color(0xFF2d2d2d), this.iconColor= const Color(0xFFd2d2d2), this.textColor=const Color(0xFFd2d2d2)});

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
                        backgroundColor: backgroundColor,
                          maxRadius: radius,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(icon, color: iconColor,),
                              SizedBox(height: 5,),
                              Text(label, style: TextStyle(color: textColor,fontSize: 10 ),),
                            ],
                          ),
                      );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context){
      return MediaQuery.of(context).size;
  }
  static getScreenHeight(){
    return Get.height;
  }
  static getSreenWidth(){
    return Get.width;
  }
  static getHeight(double pixels){
        if (pixels == 0 || pixels.isNaN || getScreenHeight() == 0) return 1.0;
    double x = getScreenHeight() / pixels;
    if (x == 0 || x.isNaN || x.isInfinite) return 1.0;
    return getScreenHeight() / x;
  }
  static getWidth(double pixels){
       if (pixels == 0 || pixels.isNaN || getSreenWidth() == 0) return 1.0;
    double x = getSreenWidth() / pixels;
    if (x == 0 || x.isNaN || x.isInfinite) return 1.0;
    return getSreenWidth() / x;
  }
}
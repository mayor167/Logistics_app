// ignore_for_file: file_names
import 'dart:async';

import 'package:dashboard_project_new/datas/carousel_image.dart';
import 'package:flutter/material.dart';

List <Widget> carouselItems = images.map((cimage)=>Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(cimage, fit: BoxFit.cover,)),
  ),
)).toList();
class EflierScreen extends StatefulWidget {
  const EflierScreen({super.key});

  @override
  State<EflierScreen> createState() => _EflierScreenState();
}

class _EflierScreenState extends State<EflierScreen> {
  final PageController _pageController = PageController( initialPage: 0);
  int currentPage = 0;
  late Timer timer;
  @override
  void initState() {
    timer = Timer.periodic(Duration(seconds: 2), (timer){
      
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.25,
      width: double.infinity,
      child:PageView(
            controller: _pageController,
            children:carouselItems,
          ) 
    );
  }
}
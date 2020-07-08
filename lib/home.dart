import 'package:flutter/material.dart';
// import 'package:velocity_x/src/';
import 'package:portolliovinayak/coolors.dart';
import 'package:portolliovinayak/footers.dart';
import 'package:portolliovinayak/header.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:portolliovinayak/middle.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child: VStack([
        HeaderScreen(),
        if(context.isMobile) Introductionwidget().p16(),
        MiddleScreen(),
        FooterScreen(),
      ]).scrollVertical(),
    );
  }
}

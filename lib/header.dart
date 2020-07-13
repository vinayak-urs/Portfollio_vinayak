import 'dart:ui';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portolliovinayak/coolors.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:portolliovinayak/social.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var namewidget = "Singh\nVinayak"
    //     .text
    //     .pink500
    //     .xl5
    //     .lineHeight(1)
    //     .size(context.isMobile ? 13 : 15)
    //     .bold
    //     .make()
    //     .shimmer(
    //         // primaryColor: Coolers.secondaryColor,
    //         );

    return SafeArea(
      // minimum: EdgeInsets.symmetric(vertical: 100.0),
      child: VxBox(
              child: VStack([
        ZStack([
          PictureWidget(),
          Row(
            children: [
              VStack([
                if (context.isMobile) 30.heightBox else 10.heightBox,
                CustomAppBar().shimmer(
                  primaryColor: Coolers.accentColor,
                ),
                30.heightBox,
                Text("Vinayak\nSingh",
                    style: GoogleFonts.concertOne(
                      textStyle: TextStyle(
                        color: Colors.white,
                        letterSpacing: .5,
                        fontSize: 40,
                      ),
                    )),
                // SizedBox(height: 50),
                10.heightBox,
                VxBox()
                    .color(Coolers.accentColor)
                    .size(100, 10)
                    .make()
                    .shimmer(primaryColor: Coolers.accentColor),
                15.heightBox,
                SocialAccounts(),
              ]).pSymmetric(h: context.percentHeight * 2, v: 20),
              Expanded(
                  child: VxResponsive(
                      fallback: const Offstage(),
                      medium: Introductionwidget()
                          .pOnly(left: 120)
                          .h(context.percentHeight * 60),
                      large: Introductionwidget()
                          .pOnly(left: 120)
                          .h(context.percentHeight * 60)))
            ],
          ).w(context.screenWidth),
        ]),
      ]))
          .size(context.screenWidth, context.percentHeight * 45)
          .color(Coolers.secondaryColor)
          .make(),
    );
  }
}

class PictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.topRight,
      transform: Matrix4.rotationY(0),
      child: Center(
          child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(150.0, 50.0, 0.0, 10.0),
          width: 230,
          height: 220,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage("assets/pic2.jpg"), fit: BoxFit.fill),
          ),
        ),
      ])),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 20.0, 0, 0),
      child: Icon(
        AntDesign.idcard,
        size: 70,
        color: Coolers.accentColor,
      ),
    );
  }
}

class Introductionwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack([
      [
        // "-Introduction".text.gray500.widest.sm.make(),
        Text("-Introduction",
            style: GoogleFonts.concertOne(
              textStyle: TextStyle(
                color: Colors.grey,
                letterSpacing: .5,
                fontSize: 20,
              ),
            )),
        10.heightBox,
        Text(
            "@fluterdeveloper firebase , dart & web ,Machine learning enthusiast , Freelancer, Vlogger",
            style: GoogleFonts.concertOne(
              textStyle: TextStyle(
                color: Colors.white,
                letterSpacing: .5,
                fontSize: 30,
              ),
            )),
      ].vStack(),
    ]);
  }
}

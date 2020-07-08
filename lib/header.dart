import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portolliovinayak/coolors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:portolliovinayak/social.dart';
class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var namewidget = "Singh\nVinayak"
        .text
        .pink300
        .xl5
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer(
            // primaryColor: Coolers.accentColor,
            );
    return SafeArea(
      child: VxBox(
          child: VStack([
        ZStack([
          PictureWidget(),
          Row(
            children: [
              VStack([
                if(context.isMobile)50.heightBox else 10.heightBox,
                CustomAppBar().shimmer(
                  primaryColor: Coolers.accentColor,
                ),
                // SizedBox(height: 50),
                20.heightBox,
                namewidget,
                20.heightBox,
                VxBox()
                    .color(Coolers.accentColor)
                    .size(60, 10)
                    .make()
                    .shimmer(primaryColor: Coolers.accentColor),
                10.heightBox,
                SocialAccounts(),
              ]).pSymmetric(h: context.percentWidth * 10, v: 32),
              Expanded(
                child: VxResponsive(
                  fallback: const Offstage(),
                  medium: Introductionwidget()
                      .pOnly(left: 120)
                      .h(context.percentHeight*60),
                  large: Introductionwidget()
                    .pOnly(left: 120)
                    .h(context.percentHeight*60)
                )
              )
            ],
          ).w(context.screenWidth),
        ]),
      ])).size(context.screenWidth, context.percentHeight*60)
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
      child: Image.asset(
        "assets/p261.png",
         fit: BoxFit.contain,
        height: context.percentHeight*60,
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolers.accentColor,
    );
  }
}

class Introductionwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack([
      ["-Introduction".text.gray500.widest.sm.make(),
        10.heightBox,
        "@fluterdeveloper firebase ,dart & web\nMachine learning enthusiast\nFreelancer, Vlogger"
            .text
            .white
            .xl3
            .maxLines(5)
            .make()
            .w(context.isMobile
            ? context.screenWidth
            : context.percentWidth * 40),
      ].vStack(),
    ]);
  }
}


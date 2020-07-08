import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portolliovinayak/coolors.dart';
import 'package:portolliovinayak/header.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_icons/flutter_icons.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack([
      VxDevice(mobile:VStack([
        "Got a project ?\nLet's talk."
            .text
            .center
            .white
            .xl2
            .make(),

        10.heightBox,
        "Singhvinayakurs@gmil.com"
            .text
            .color(Coolers.accentColor)
            .semiBold
            .make()
            .box
            .border(color: Coolers.accentColor)
            .p16
            .rounded
            .make()
      ],
        crossAlignment: CrossAxisAlignment.center,
      ) ,
      web: HStack(["Got a project ?\nLet's talk."
          .text
          .center
          .white
          .xl2
          .make(),
        10.heightBox,
        "Singhvinayakurs@gmil.com"
            .text
            .color(Coolers.accentColor)
            .semiBold
            .make()
            .box
            .border(color: Coolers.accentColor)
            .p16
            .rounded
            .make()
      ],
        alignment: MainAxisAlignment.spaceAround,
      ).w(context.safePercentWidth*70).scale150().p16(),
      ),
      50.heightBox,
      CustomAppBar(),
      10.heightBox,
      "Thanks for Scrolling.".richText.semiBold.white.withTextSpanChildren([
        "that's all folks".textSpan.gray500.make()
      ]).make(),
      10.heightBox,
      ["Made in India with ".text.red500.make(),
      10.widthBox,
        Icon(AntDesign.heart,color: Vx.red500,size: 14,)
      ].hStack(crossAlignment: CrossAxisAlignment.center)
    ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}


import 'package:flutter/material.dart';
import 'package:portolliovinayak/coolors.dart';
import 'package:social_media_buttons/social_media_button.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:velocity_x/velocity_x.dart';

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,

      child: [
//        Icon(SocialMediaIcons.github_circled),
        SocialMediaButton.github(
          url: "https://github.com/in-00",
          size: 25,
          color: Colors.white,
        ),
        5.widthBox,
        SocialMediaButton.linkedin(
            url: "https://www.linkedin.com/in/vinayak-singh-57114317b",
            size: 25,
            color: Colors.white,
            onTap: () {
              print('onTap ');
            }
        ),
//        Icon(SocialMediaIcons.instagram),
        5.widthBox,
        SocialMediaButton.instagram(
          url: "https://instagram.com/singhvinayak_urs?igshid=1uq23qplxs6ir",
          size: 25,
          color: Colors.white,
          onTap: () {
            print('onTap ');
          },
        ),
//        Icon(SocialMediaIcons.facebook_squared),
      5.widthBox,
        SocialMediaButton.facebook(
          url: "https://m.facebook.com/singhvinayakurs",
          size: 25,
          color: Colors.white,
          onTap: () {
            print('onTap ');
          },
        )
//        Icon(SocialMediaIcons.linkedin_squared),

      ].hStack(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:portfolio/Pages/SocialIcons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
      height: size.height,
      width: size.width,
      duration: Duration(seconds: 1),
      child: Column(
        children: [
          Expanded(child: Container()),
          Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: Color(0xff7c94b6),
              image: DecorationImage(
                image: NetworkImage(
                    'https://avatars.githubusercontent.com/u/34465683?s=400&u=f4496844c3d885150553caac4be569cd8ca6dd91&v=4'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(100.0)),
              border: Border.all(
                color: Colors.white,
                width: 4.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Kishan Rathore",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "Android and Flutter Developer",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SocialIcons(
                    iconData: MdiIcons.linkedin,
                    link: 'https://linkedin.com/in/rkishan516',
                  ),
                  SocialIcons(
                    iconData: MdiIcons.github,
                    link: 'https://github.com/rkishan516',
                  ),
                  SocialTextIcons(),
                  SocialIcons(
                    iconData: MdiIcons.twitter,
                    link: 'https://twitter.com/rkishan516',
                  )
                ],
              ),
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcons extends StatefulWidget {
  final IconData iconData;
  final String link;
  SocialIcons({this.iconData, this.link});

  @override
  _SocialIconsState createState() => _SocialIconsState();
}

class _SocialIconsState extends State<SocialIcons> {
  Color backgroundColor = Colors.red;
  double size = 24.0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (p) {
        setState(() {
          backgroundColor = Colors.redAccent;
          size = 26;
        });
      },
      onExit: (p) {
        setState(() {
          backgroundColor = Colors.red;
          size = 24;
        });
      },
      child: InkWell(
        onTap: () {
          launch(widget.link);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100.0)),
              color: backgroundColor,
            ),
            padding: EdgeInsets.all(10),
            child: Icon(
              widget.iconData,
              color: Colors.white,
              size: size,
            ),
          ),
        ),
      ),
    );
  }
}

class SocialTextIcons extends StatefulWidget {
  @override
  _SocialTextIconsState createState() => _SocialTextIconsState();
}

class _SocialTextIconsState extends State<SocialTextIcons> {
  Color backgroundColor = Colors.red;
  FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (p) {
        setState(() {
          backgroundColor = Colors.redAccent;
          weight = FontWeight.bold;
        });
      },
      onExit: (p) {
        setState(() {
          backgroundColor = Colors.red;
          weight = null;
        });
      },
      child: InkWell(
        onTap: () {
          launch("https://medium.com/@rkishan516");
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100.0)),
              color: backgroundColor,
            ),
            padding: EdgeInsets.all(15),
            child: Text(
              "M",
              style: TextStyle(
                color: Colors.white,
                fontWeight: weight, 
              ),
            ),
          ),
        ),
      ),
    );
  }
}

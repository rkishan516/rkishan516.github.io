import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SkillsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: Duration(
        milliseconds: 200,
      ),
      padding: EdgeInsets.only(left: 50 + size.width / 25, right: 50, top: 50),
      height: size.height,
      width: size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Skills",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Container(
                width: size.width / 20,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4.0),
              child: Container(
                width: size.width / 40,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: GridView.count(
                crossAxisCount: (MediaQuery.of(context).size.width ~/ 400),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
                crossAxisSpacing: 50,
                children: [
                  SkillWidget(
                    icon: MdiIcons.desktopMac,
                    type: "Fronted",
                    skillSpecific: [
                      "Flutter",
                      "React JS",
                      "HTML/CSS/JS",
                      "Android Development"
                    ],
                  ),
                  SkillWidget(
                    icon: MdiIcons.database,
                    type: "Backend",
                    skillSpecific: [
                      "Node JS",
                      "Firebase",
                      "Mongo DB",
                      "PHP MVC",
                      "Iris Go"
                    ],
                  ),
                  SkillWidget(
                    icon: Icons.settings,
                    type: "Others",
                    skillSpecific: [
                      "Github/Bitbucket",
                      "UI/UX",
                      "Video Processing",
                      "Azure devOps"
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SkillWidget extends StatefulWidget {
  final String type;
  final IconData icon;
  final List<String> skillSpecific;
  const SkillWidget({Key key, this.type, this.icon, this.skillSpecific})
      : super(key: key);

  @override
  _SkillWidgetState createState() => _SkillWidgetState();
}

class _SkillWidgetState extends State<SkillWidget> {
  Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (p) {
        setState(() {
          color = Colors.white;
        });
      },
      onExit: (p) {
        setState(() {
          color = Colors.red;
        });
      },
      child: Container(
        height: 320,
        width: 270,
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RawMaterialButton(
                onPressed: () {},
                elevation: 2.0,
                fillColor: color == Colors.red ? null : Colors.red,
                child: Icon(
                  widget.icon,
                  size: 48,
                  color: color,
                ),
                padding: EdgeInsets.all(15.0),
                shape: CircleBorder(),
              ),
            ),
            Expanded(
              child: Text(
                widget.type,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: ListView(
                  children: [
                    for (String skill in widget.skillSpecific)
                      SkillWidgetSpecific(name: skill),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SkillWidgetSpecific extends StatelessWidget {
  final String name;
  const SkillWidgetSpecific({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 8),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.done,
              color: Colors.white,
            ),
          ),
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

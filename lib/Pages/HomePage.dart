import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:portfolio/Pages/Body.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black87,
      drawer: Drawer(
        elevation: 10,
        child: Container(
          color: Colors.black87,
          child: Column(
            children: [
              Spacer(),
              ListTile(
                leading: Icon(
                  MdiIcons.home,
                  color: Colors.red,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: (){
                  setState(() {
                    _currentPageIndex = 0;
                  });
                  _scaffoldKey.currentState.openEndDrawer();
                },
              ),
              ListTile(
                leading: Icon(
                  MdiIcons.rowing,
                  color: Colors.red,
                ),
                title: Text(
                  "Skills",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: (){
                  setState(() {
                    _currentPageIndex = 1;
                  });
                  _scaffoldKey.currentState.openEndDrawer();
                },
              ),
              ListTile(
                leading: Icon(
                  MdiIcons.message,
                  color: Colors.red,
                ),
                title: Text(
                  "Contact Me",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: (){
                  setState(() {
                    _currentPageIndex = 2;
                  });
                  _scaffoldKey.currentState.openEndDrawer();
                },
              ),
              Spacer(
                flex: 7,
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.sort),
          color: Colors.red,
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Body(
                pageIndex: _currentPageIndex,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

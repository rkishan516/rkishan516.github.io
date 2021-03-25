import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  final TextEditingController nameTextEditingController =
      TextEditingController();
  final TextEditingController emailTextEditingController =
      TextEditingController();
  final TextEditingController subjectTextEditingController =
      TextEditingController();
  final TextEditingController messageTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    InputBorder border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
      ),
      borderRadius: BorderRadius.circular(50),
    );
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
              "Contact",
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
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 16.0,
                        bottom: 16.0,
                        right: (MediaQuery.of(context).orientation ==
                                Orientation.landscape)
                            ? 16.0
                            : 0.0),
                    child: TextField(
                      controller: nameTextEditingController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 30),
                        border: border,
                        enabledBorder: border,
                        fillColor: Colors.grey,
                        hintText: 'Name',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                if (MediaQuery.of(context).orientation == Orientation.landscape)
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16.0),
                      child: TextField(
                        controller: emailTextEditingController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 30),
                          border: border,
                          enabledBorder: border,
                          fillColor: Colors.grey,
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            if (MediaQuery.of(context).orientation == Orientation.portrait)
              Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: TextField(
                  controller: emailTextEditingController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    border: border,
                    enabledBorder: border,
                    fillColor: Colors.grey,
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            Padding(
              padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: TextField(
                controller: subjectTextEditingController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  border: border,
                  enabledBorder: border,
                  fillColor: Colors.grey,
                  hintText: 'Subject',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: TextField(
                maxLines: 8,
                controller: messageTextEditingController,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  border: border.scale(0.5),
                  enabledBorder: border.scale(0.5),
                  fillColor: Colors.grey,
                  hintText: 'Message',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                launch(
                    "mailto:rkishan516@gmail.com?subject=${subjectTextEditingController.text}&body=${messageTextEditingController.text}");
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 16.0,
                  bottom: 16.0,
                  left: 32.0,
                  right: 32.0,
                ),
                child: Text(
                  "Send Message",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

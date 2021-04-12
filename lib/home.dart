import 'package:facebook_clone/sections/headerButtonSection.dart';
import 'package:facebook_clone/sections/roomSection.dart';
import 'package:facebook_clone/sections/statusSection.dart';
import 'package:facebook_clone/widgets/circularBtn.dart';
import 'package:flutter/material.dart';

import 'sections/storySection.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey.shade300,
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey.shade300,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "facebook",
          style: TextStyle(
              color: Colors.blue, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        actions: [
          CircularButton(
              buttonIcon: Icons.search,
              color: Colors.grey.shade300,
              buttonAction: () {
                print("search");
              }),
          CircularButton(
              buttonIcon: Icons.chat,
              color: Colors.grey.shade300,
              buttonAction: () {
                print("messenger");
              }),
        ],
      ),
      body: ListView(
        children: [
          StatusSection(),
          thinDivider,
          HeaderButtonSection(),
          thickDivider,
          RoomSection(),
          thickDivider,
          StorySection(),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}

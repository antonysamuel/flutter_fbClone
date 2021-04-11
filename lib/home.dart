import 'package:facebook_clone/sections/headerButtonSection.dart';
import 'package:facebook_clone/sections/statusSection.dart';
import 'package:facebook_clone/widgets/appbarBtn.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          AppBarButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("search");
              }),
          AppBarButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("messenger");
              }),
        ],
      ),
      body: ListView(
        children: [
          StatusSection(),
          Divider(
            thickness: 1,
            color: Colors.grey.shade300,
          ),
          HeaderButtonSection(),
          Divider(
            thickness: 10,
            color: Colors.grey.shade300,
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}

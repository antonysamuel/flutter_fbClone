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
    );
  }
}

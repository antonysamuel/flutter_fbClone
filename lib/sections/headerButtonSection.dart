import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget headerButton(IconData icn, String txt, Color color) {
    return TextButton.icon(
        onPressed: () {},
        icon: Icon(
          icn,
          color: color,
        ),
        label: Text(txt));
  }

  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey.shade300,
    );
    return Container(
      height: 50,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(Icons.video_call, "Live", Colors.red),
          verticalDivider,
          headerButton(Icons.photo_library, "Photo", Colors.green),
          verticalDivider,
          headerButton(Icons.video_call, "Room", Colors.purple)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PostButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      // color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          postButton(Icons.thumb_up, "Like"),
          VerticalDivider(
            color: Colors.grey.shade300,
            thickness: 1,
          ),
          postButton(Icons.comment, "Comment"),
          VerticalDivider(
            color: Colors.grey.shade300,
            thickness: 1,
          ),
          postButton(Icons.share, "Share"),
        ],
      ),
    );
  }

  Widget postButton(IconData icon, String label) {
    return TextButton.icon(
        onPressed: () {},
        icon: Icon(
          icon,
          color: Colors.grey.shade500,
        ),
        label: Text(
          label,
          style: TextStyle(color: Colors.grey.shade800),
        ));
  }
}

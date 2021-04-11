import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(100),
            ),
            width: 150,
            child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.video_call,
                  color: Colors.purple,
                ),
                label: Text(
                  "Create Room",
                  style: TextStyle(color: Colors.blue),
                )),
          )
        ],
      ),
    );
  }
}

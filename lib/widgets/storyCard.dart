import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/circularBtn.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatefulWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  bool displayBorder;

  StoryCard(
      {@required this.labelText,
      @required this.story,
      this.avatar,
      this.createStoryStatus = false,
      this.displayBorder = false});

  @override
  _StoryCardState createState() => _StoryCardState();
}

class _StoryCardState extends State<StoryCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.displayBorder = !widget.displayBorder;
        });
      },
      child: Container(
        width: 150,
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(widget.story), fit: BoxFit.cover),
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15)),
        child: Stack(
          children: [
            Positioned(
                top: 4,
                left: 4,
                child: widget.createStoryStatus
                    ? CircularButton(
                        icncolor: Colors.blue,
                        buttonIcon: Icons.add,
                        buttonAction: () {})
                    : Avatar(
                        imgUrl: widget.avatar,
                        displayStatus: false,
                        displayBorder: widget.displayBorder,
                      )),
            Positioned(
                bottom: 10,
                left: 10,
                child: Text(
                  widget.labelText != null ? widget.labelText : "N/A",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ))
          ],
        ),
      ),
    );
  }
}

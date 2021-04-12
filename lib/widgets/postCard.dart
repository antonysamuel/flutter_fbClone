import 'package:facebook_clone/sections/postButtonSection.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/blueTick.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String time;
  final String imgUrl;
  final String postTitle;
  final bool isVerified;
  final int likeCnt, shareCnt, cmtCnt;
  PostCard(
      {@required this.avatar,
      @required this.name,
      @required this.time,
      @required this.postTitle,
      @required this.imgUrl,
      this.isVerified = false,
      this.likeCnt = 0,
      this.shareCnt = 0,
      this.cmtCnt = 0});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footer(),
          Divider(
            thickness: 1,
          ),
          PostButtonSection(),
          Divider(
            thickness: 1,
          ),
          Divider(
            thickness: 10,
          )
        ],
      ),
    );
  }

  Widget postCardHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
      child: ListTile(
        leading: Avatar(imgUrl: avatar),
        title: Row(
          children: [
            Text(
              name,
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              width: 10,
            ),
            isVerified ? BlueTick() : SizedBox(),
          ],
        ),
        subtitle: Row(
          children: [
            Text(time),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.public,
              color: Colors.grey.shade700,
              size: 15,
            ),
          ],
        ),
        trailing: IconButton(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.grey.shade700,
            ),
            onPressed: () {}),
      ),
    );
  }

  Widget titleSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: Text(
        postTitle,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Image.network(imgUrl),
    );
  }

  Widget footer() {
    return Container(
      height: 45,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                  size: 10,
                ),
              ),
              displayText(likeCnt.toString() + "K"),
            ],
          ),
          Container(
            child: Row(
              children: [
                displayText(cmtCnt.toString() + "K"),
                SizedBox(
                  width: 4,
                ),
                displayText("Comments"),
                SizedBox(
                  width: 10,
                ),
                displayText(shareCnt.toString() + "K"),
                SizedBox(
                  width: 4,
                ),
                displayText("Shares"),
                SizedBox(
                  width: 10,
                ),
                Avatar(
                  imgUrl: avatar,
                  height: 20,
                  width: 20,
                ),
                SizedBox(
                  width: 4,
                ),
                IconButton(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey.shade700,
                    ),
                    onPressed: () {})
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget displayText(String txt) {
  return Text(
    txt,
    style: TextStyle(color: Colors.grey.shade700),
  );
}

import 'package:facebook_clone/sections/headerButtonSection.dart';
import 'package:facebook_clone/sections/roomSection.dart';
import 'package:facebook_clone/sections/statusSection.dart';
import 'package:facebook_clone/widgets/circularBtn.dart';
import 'package:facebook_clone/widgets/postCard.dart';
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
        // physics: const AlwaysScrollableScrollPhysics(),
        children: [
          StatusSection(),
          thinDivider,
          HeaderButtonSection(),
          thickDivider,
          RoomSection(),
          thickDivider,
          StorySection(),
          thickDivider,
          PostCard(
            avatar:
                "https://m.media-amazon.com/images/M/MV5BYjEyODkwMTUtMWQ2Mi00MTJjLWE2MTAtM2ExMzljNGY0ZTc2XkEyXkFqcGdeQXVyMjYwMDk5NjE@._V1_.jpg",
            name: "Surya",
            isVerified: true,
            time: "Just now",
            postTitle: "Soorarai Pottru Now Amazon Premier",
            imgUrl:
                "https://thefederal.com/file/2020/11/suriya-soorarai-pottru-1024x576.jpg",
            likeCnt: 3,
            cmtCnt: 2,
            shareCnt: 1,
          ),
          PostCard(
            avatar:
                "https://pbs.twimg.com/profile_images/1282300331129364483/cqQNY9US_400x400.jpg",
            name: "Nivin Pauly",
            isVerified: true,
            time: "5h",
            postTitle: "New movie pooja....",
            imgUrl:
                "https://instagram.fcok6-1.fna.fbcdn.net/v/t51.2885-15/e35/c315.0.810.810a/s320x320/152099668_692641538073767_2788901988184986119_n.jpg?tp=1&_nc_ht=instagram.fcok6-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=y6hFtn6SIKUAX8lnBUg&edm=ABfd0MgAAAAA&ccb=7-4&oh=db5f8f3dece50ab9a1a3c0072d87a111&oe=60980970&_nc_sid=7bff83",
            likeCnt: 1,
            cmtCnt: 1,
            shareCnt: 0,
          ),
          PostCard(
            avatar:
                "https://www.malayalamplainmemes.download/images/karikku-george-qqjdb/full",
            name: "Babu Namboothiri",
            isVerified: false,
            time: "1 day ago",
            postTitle: "Shoot days...",
            imgUrl:
                "https://static.toiimg.com/thumb/msid-68546530,width-1200,height-900,resizemode-4/.jpg",
            likeCnt: 2,
            cmtCnt: 1,
            shareCnt: 4,
          ),
          PostCard(
            avatar:
                "https://instagram.fcok6-1.fna.fbcdn.net/v/t51.2885-19/s150x150/11379075_128850657455011_1200404604_a.jpg?tp=1&_nc_ht=instagram.fcok6-1.fna.fbcdn.net&_nc_ohc=hp2OuuZ1wtwAX-gQuNS&edm=ABfd0MgAAAAA&ccb=7-4&oh=7ae1844e3e3430384855ad1e975f2e21&oe=609A664B&_nc_sid=7bff83",
            name: "Basil Joseph",
            isVerified: true,
            time: "10h",
            postTitle: "Minnal Murali Set.",
            imgUrl:
                "https://images.indianexpress.com/2020/08/Minal-MURALI-teaser-1200.jpg",
            likeCnt: 3,
            cmtCnt: 4,
            shareCnt: 2,
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}

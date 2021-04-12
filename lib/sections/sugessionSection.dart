import 'package:facebook_clone/widgets/userSugessionCard.dart';
import 'package:flutter/material.dart';

class SugessionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            leading: Text(
              "People You May Know",
              style: TextStyle(
                color: Colors.grey.shade800,
              ),
            ),
            trailing: Icon(
              Icons.more_horiz,
              color: Colors.grey.shade800,
            ),
          ),
          Container(
            height: 380,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                UserSugessionCard(
                  imgUrl:
                      "https://english.cdn.zeenews.com/sites/default/files/styles/zm_700x400/public/2020/12/18/906166-dhanush.jpg",
                  name: "Dhanush",
                  mutual: 22,
                ),
                UserSugessionCard(
                  imgUrl:
                      "https://www.mathrubhumi.com/polopoly_fs/1.4624614.1584504848!/image/image.jpg_gen/derivatives/landscape_928/image.jpg",
                  name: "Mallu Traveler",
                  mutual: 8,
                ),
                UserSugessionCard(
                  imgUrl:
                      "https://i.pinimg.com/originals/63/a3/21/63a321461cabd9a095824def7162e8f3.jpg",
                  name: "Sithara Krishnakumar",
                  mutual: 12,
                ),
                UserSugessionCard(
                  imgUrl:
                      "https://a10.gaanacdn.com/images/artists/29/343229/crop_480x480_343229.jpg",
                  name: "Sushin Shyam",
                  mutual: 3,
                ),
              ],
            ),
          ),
          Divider(
            thickness: 10,
          )
        ],
      ),
    );
  }
}

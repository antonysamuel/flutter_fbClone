import 'package:flutter/material.dart';

class UserSugessionCard extends StatelessWidget {
  final String imgUrl, name;
  final int mutual;
  UserSugessionCard({this.imgUrl, this.name, this.mutual});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          sugessionImage(),
          sugessionInfo(),
        ],
      ),
    );
  }

  Widget sugessionImage() {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: Image.network(
            imgUrl,
            height: 250,
            fit: BoxFit.cover,
          ),
        ));
  }

  Widget sugessionInfo() {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              border: Border.all(color: Colors.grey.shade300, width: 1),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          height: 130,
          child: Column(
            children: [
              ListTile(
                title: Text(name),
                subtitle: Text(" ${mutual} Mutual friends"),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    userSugessionBtn(Icons.add_moderator, () => null,
                        Colors.blue, Colors.white, Colors.white, "Add Friend"),
                    removeBtn("Remove", Colors.black, Colors.grey.shade300)
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget userSugessionBtn(IconData icon, Function() btnFunction, Color btncolor,
      Color btnTxtColor, Color icnColor, String txt) {
    return TextButton.icon(
        style: TextButton.styleFrom(
            backgroundColor: btncolor,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12)),
        onPressed: btnFunction,
        icon: Icon(
          icon,
          color: icnColor,
        ),
        label: Text(
          txt,
          style: TextStyle(color: btnTxtColor),
        ));
  }

  Widget removeBtn(String txt, Color txtColor, Color btnColor) {
    return TextButton(
      onPressed: () {},
      child: Text(
        txt,
        style: TextStyle(color: txtColor),
      ),
      style: TextButton.styleFrom(
          backgroundColor: btnColor,
          padding: EdgeInsets.symmetric(horizontal: 18)),
    );
  }
}

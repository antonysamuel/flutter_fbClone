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
          postButton(Icons.share, "Share", () {
            _sharebtn(context);
          }),
        ],
      ),
    );
  }

  postButton(IconData icon, String label, [Function btnFunction()]) {
    return TextButton.icon(
        onPressed: btnFunction != null
            ? btnFunction
            : () {
                print("Added null test success");
              },
        icon: Icon(
          icon,
          color: Colors.grey.shade500,
        ),
        label: Text(
          label,
          style: TextStyle(color: Colors.grey.shade800),
        ));
  }

  _sharebtn(context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.grey.shade100,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
        builder: (BuildContext cnt) {
          return Container(
            height: MediaQuery.of(context).size.height * .40,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text(
                    "Email",
                    textAlign: TextAlign.center,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.messenger),
                  title: Text(
                    "WhatsApp",
                    textAlign: TextAlign.center,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.sms),
                  title: Text(
                    "SMS",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        });
  }
}

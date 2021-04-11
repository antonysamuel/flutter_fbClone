import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String imgUrl;
  final bool displayStatus;
  Avatar({@required this.imgUrl, @required this.displayStatus});
  @override
  Widget build(BuildContext context) {
    Widget statusIndicator = Positioned(
      bottom: 0,
      right: 2,
      child: Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: Colors.white, width: 2),
        ),
      ),
    );

    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              imgUrl,
              width: 50,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
        ),
        displayStatus ? statusIndicator : SizedBox(),
      ],
    );
  }
}

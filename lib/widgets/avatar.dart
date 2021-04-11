import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String imgUrl;
  Avatar({@required this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.network(
        imgUrl,
        width: 50,
        height: 60,
        fit: BoxFit.cover,
      ),
    );
  }
}

import 'package:dating_app/commons/roundedimage.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          RoundedImage(imagePath: "assets/images/anne.jpeg")
        ],
      ),
    );
  }
}
import 'package:dating_app/commons/myinfo.dart';
import 'package:dating_app/commons/opaqueimage.dart';
import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Stack(
                  children: [
                    OpaqueImage(
                      imageUrl: "assets/images/anne.jpeg",
                      ),
                      SafeArea(
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "My Profile",
                                  textAlign: TextAlign.left,
                                  style: headingTextStyle,
                                ),
                              ),
                              MyInfo(),
                            ],
                          ),
                        ),
                      )
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
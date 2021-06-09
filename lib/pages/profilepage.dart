import 'package:dating_app/commons/myinfo.dart';
import 'package:dating_app/commons/opaqueimage.dart';
import 'package:dating_app/commons/profileinfobigcard.dart';
import 'package:dating_app/pages/superlikesmepage.dart';
import 'package:dating_app/styleguide/colors.dart';
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
                  padding: const EdgeInsets.only(top: 50),
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            firstText: "13",
                            secondText: "New matches",
                            icon: Icon(
                              Icons.star,
                              size: 32,
                              color: blueColor,
                            ),
                          ),
                          ProfileInfoBigCard(
                            firstText: "21",
                            secondText: "Unmatched me",
                            icon: Image.asset(
                              "assets/icons/sad_smiley.png",
                              width: 32,
                              color: blueColor,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            firstText: "264",
                            secondText: "All matches",
                            icon: Image.asset(
                              "assets/icons/checklist.png",
                              width: 32,
                              color: blueColor,
                            ),
                          ),
                          ProfileInfoBigCard(
                            firstText: "42",
                            secondText: "Rematches",
                            icon: Icon(
                              Icons.refresh,
                              size: 32,
                              color: blueColor,
                            ),
                          ),
                        ]
                      ),
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            firstText: "404",
                            secondText: "Profile Visitors",
                            icon: Icon(
                              Icons.remove_red_eye,
                              size: 32,
                              color: blueColor,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SuperLikesMePage(),
                                ),
                              );
                            },
                            child: ProfileInfoBigCard(
                              firstText: "42",
                              secondText: "Super likes",
                              icon: Icon(
                                Icons.favorite,
                                size: 32,
                                color: blueColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
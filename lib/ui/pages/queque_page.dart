import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class AntrianPage extends StatelessWidget {
  const AntrianPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: kWhiteColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: kBlackColor,
          centerTitle: true,
          title: Text(
            "Antrian",
            style: whiteTextStyle,
          )),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: SizeConfig.blockVertical(4)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage("assets/images/image_profile.png"))),
                ),
                Container(
                  margin: EdgeInsets.only(left: SizeConfig.blockHorizontal(2)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Doe",
                        style: blackDarkTextStyle.copyWith(
                            fontSize: 18, fontWeight: bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: kGoldColor,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: kGoldColor,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: kGoldColor,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: kGoldColor,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: kGreyColor,
                            size: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: SizeConfig.blockVertical(0.5),
                      bottom: SizeConfig.blockVertical(0.5),
                      left: SizeConfig.blockHorizontal(2),
                      right: SizeConfig.blockHorizontal(2)),
                  decoration: BoxDecoration(color: kSoftRed),
                  child: Text(
                    "Rp 150.000",
                    style: softBrownTextStyle.copyWith(
                        fontWeight: bold, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.blockVertical(1),
          ),
          Divider(
            thickness: 2,
          ),
          Center(
              child: Container(
            width: SizeConfig.blockHorizontal(80),
            height: SizeConfig.blockVertical(40),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                color: kBlackColor,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [kGreyColor, Colors.black.withOpacity(1)])),
            margin: EdgeInsets.only(top: SizeConfig.blockHorizontal(10)),
            padding: EdgeInsets.only(
                top: SizeConfig.blockVertical(7),
                bottom: SizeConfig.blockVertical(7),
                right: SizeConfig.blockHorizontal(8),
                left: SizeConfig.blockHorizontal(8)),
            child: Column(
              children: [
                Text(
                  "You are on queque number",
                  style: whiteTextStyle.copyWith(fontSize: 14),
                ),
                SizedBox(
                  height: SizeConfig.blockVertical(2),
                ),
                Text(
                  "30",
                  style:
                      whiteTextStyle.copyWith(fontWeight: bold, fontSize: 80),
                ),
                Text(
                  "Current queque: 27",
                  style: whiteTextStyle.copyWith(fontSize: 14),
                ),
              ],
            ),
          )),
          SizedBox(
            height: SizeConfig.blockVertical(2),
          ),
          Center(
            child: Text(
              "Est. Time 4 Hour(s)",
              style: blackTextStyle,
            ),
          )
        ],
      ),
    );
  }
}

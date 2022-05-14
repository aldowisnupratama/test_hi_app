import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:test_hiapp/model/barber_model.dart';
import 'package:test_hiapp/shared/shared.dart';
import 'package:test_hiapp/ui/widgets/costume_barber%20_rating.dart';

import 'package:test_hiapp/ui/widgets/costume_card_professionals.dart';
import 'package:test_hiapp/ui/widgets/costume_news_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Barber> pro = [
    Barber(
        rating: 4,
        name: "Aldo Wisnu",
        imageSource: "assets/images/image_profile.png"),
    Barber(
        rating: 3,
        name: "Wisnu Aldo",
        imageSource: "assets/images/person_account.png"),
    Barber(
        rating: 2,
        name: "Pratama Wisnu",
        imageSource: "assets/images/image_profile.png"),
    Barber(
        rating: 1,
        name: "Pratama Wisnu",
        imageSource: "assets/images/person_account.png"),
    Barber(
        rating: 5,
        name: "Pratama Aldo",
        imageSource: "assets/images/image_profile.png"),
  ];

  List<String> imageResources = [
    "assets/images/image_destination3.png",
    "assets/images/image_destination1.png",
    "assets/images/image_destination2.png",
    "assets/images/image_destination4.png",
    "assets/images/image_destination5.png",
    "assets/images/image_destination7.png",
    "assets/images/image_destination8.png",
    "assets/images/image_destination9.png",
  ];

  final ScrollController controllerOne = ScrollController();

  PanelController _pc2 = new PanelController();

  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ListView(
          children: [
            Container(
              width: double.infinity,
              height: SizeConfig.blockVertical(25),
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image:
                          AssetImage("assets/images/image_destination3.png"))),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: SizeConfig.blockVertical(2),
                  left: SizeConfig.blockHorizontal(20),
                  right: SizeConfig.blockHorizontal(20)),
              width: SizeConfig.blockHorizontal(10),
              height: 50,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: kBlackColor.withOpacity(0.5),
                    blurRadius: 50,
                    offset: Offset(0, 20))
              ]),
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: kBlackColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                child: Text(
                  "Book Now",
                  style: whiteTextStyle.copyWith(fontSize: 14),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, bookPagePath);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: SizeConfig.blockVertical(3),
                  left: SizeConfig.blockHorizontal(6)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Current Booking(s)",
                    style: blackTextStyle.copyWith(fontWeight: bold),
                  ),
                  Card(
                    margin: EdgeInsets.only(
                        right: SizeConfig.blockHorizontal(6),
                        top: SizeConfig.blockVertical(2)),
                    child: Container(
                      child: Row(children: [
                        Container(
                          decoration:
                              BoxDecoration(color: kRedColor.withOpacity(0.08)),
                          padding: EdgeInsets.only(
                              top: SizeConfig.blockVertical(0.5),
                              left: SizeConfig.blockHorizontal(5),
                              right: SizeConfig.blockHorizontal(5),
                              bottom: SizeConfig.blockVertical(0.5)),
                          child: Column(
                            children: [
                              Text(
                                "30",
                                style: greyTextStyle.copyWith(
                                    fontSize: 25, fontWeight: bold),
                              ),
                              Text("April")
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: SizeConfig.blockVertical(0.5),
                              left: SizeConfig.blockHorizontal(2),
                              right: SizeConfig.blockHorizontal(2),
                              bottom: SizeConfig.blockVertical(0.5)),
                          child: Row(children: [
                            GestureDetector(
                              onTap: () {
                                if (_visible == false) {
                                  setState(() {
                                    _visible = true;
                                  });
                                  _pc2.open();
                                  // }
                                } else {
                                  setState(() {
                                    _visible = true;
                                  });
                                  _pc2.open();
                                }
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "John Doe",
                                    style: greyTextStyle.copyWith(
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
                                        color: kGoldColor,
                                        size: 15,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: SizeConfig.blockHorizontal(11)),
                              width: SizeConfig.blockHorizontal(30),
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  border:
                                      Border.all(width: 2, color: kBlackColor)),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40))),
                                child: Text(
                                  "Queque",
                                  style: blackTextStyle.copyWith(fontSize: 14),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, antrianPagePath);
                                },
                              ),
                            ),
                          ]),
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: SizeConfig.blockVertical(2),
                        bottom: SizeConfig.blockVertical(2)),
                    child: Text(
                      "Today's Professionals",
                      style: blackTextStyle.copyWith(fontWeight: bold),
                    ),
                  ),
                  Scrollbar(
                    controller: controllerOne,
                    scrollbarOrientation: ScrollbarOrientation.bottom,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: pro
                            .map((e) => ProfessionalCard(
                                  name: e.name,
                                  numberOfStar: e.rating,
                                  imageSource: e.imageSource!,
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Latest News",
                        style: blackTextStyle.copyWith(fontWeight: bold),
                      ),
                      Text(
                        "See All(${imageResources.length})",
                        style: blackTextStyle.copyWith(fontWeight: bold),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: imageResources
                            .map((e) => NewsCard(source: e))
                            .toList()),
                  ),
                ],
              ),
            ),
          ],
        ),
        Visibility(
            maintainState: true,
            maintainAnimation: true,
            visible: _visible,
            child: SlidingUpPanel(
                padding: EdgeInsets.only(
                    top: SizeConfig.blockVertical(2),
                    left: SizeConfig.blockHorizontal(18),
                    right: SizeConfig.blockHorizontal(18)),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                maxHeight: SizeConfig.blockVertical(30),
                minHeight: SizeConfig.blockHorizontal(0),
                backdropEnabled: true,
                backdropTapClosesPanel: true,
                collapsed: Container(),
                controller: _pc2,
                panel: Container(
                  child: Column(
                    children: [
                      Container(
                        width: SizeConfig.blockHorizontal(32),
                        height: SizeConfig.blockVertical(.7),
                        decoration: BoxDecoration(
                            color: kGreyColor,
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      SizedBox(
                        height: SizeConfig.blockVertical(4),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/image_profile.png"))),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: SizeConfig.blockHorizontal(8)),
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
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockVertical(4),
                      ),
                      BarberRateIcons(),
                      SizedBox(
                        height: SizeConfig.blockVertical(1),
                      ),
                      Text(
                        "How is your satisfaction?",
                        style: greyTextStyle,
                      )
                    ],
                  ),
                )))
      ]),
    );
  }
}

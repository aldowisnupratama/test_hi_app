import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_hiapp/shared/shared.dart';
import 'package:test_hiapp/ui/widgets/costume_select_date.dart';
import 'package:test_hiapp/ui/widgets/costume_select_time.dart';

import '../../cubit/select_time_cubit.dart';

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  double leftPostiion = 0;
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
            "Book Now",
            style: whiteTextStyle,
          )),
      body: ListView(children: [
        Container(
          margin: EdgeInsets.only(
              left: SizeConfig.blockHorizontal(6),
              right: SizeConfig.blockHorizontal(6),
              top: SizeConfig.blockVertical(6)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "How can we help you?",
              style: greyTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            ),
            SizedBox(
              height: SizeConfig.blockVertical(3),
            ),
            Text(
              "Select Service",
              style: greyTextStyle.copyWith(fontWeight: bold),
            ),
            Material(
              elevation: 2,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        left: BorderSide(color: Colors.brown, width: 4))),
                child: Container(
                  padding: EdgeInsets.only(
                      top: SizeConfig.blockVertical(1),
                      bottom: SizeConfig.blockVertical(1),
                      left: SizeConfig.blockHorizontal(2),
                      right: SizeConfig.blockHorizontal(2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Regular Haircut",
                            style: blackDarkTextStyle.copyWith(
                                fontSize: 14, fontWeight: semiBold),
                          ),
                          Text(
                            "45 minutes",
                            style: greyTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          )
                        ],
                      )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                top: SizeConfig.blockVertical(0.5),
                                bottom: SizeConfig.blockVertical(0.5),
                                left: SizeConfig.blockHorizontal(2),
                                right: SizeConfig.blockHorizontal(2)),
                            decoration: BoxDecoration(color: kSoftRed),
                            child: Text(
                              "Rp 150.000",
                              style:
                                  softBrownTextStyle.copyWith(fontWeight: bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: SizeConfig.blockHorizontal(4)),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/icons/arrow_down.png"))),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockVertical(3),
            ),
            Text(
              "Select Barber",
              style: greyTextStyle.copyWith(fontWeight: bold),
            ),
            Material(
              elevation: 2,
              child: Container(
                padding: EdgeInsets.only(
                    top: SizeConfig.blockVertical(1),
                    bottom: SizeConfig.blockVertical(1),
                    left: SizeConfig.blockHorizontal(2),
                    right: SizeConfig.blockHorizontal(2)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        left: BorderSide(color: Colors.brown, width: 4))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: SizeConfig.blockHorizontal(2)),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/image_profile.png"))),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: SizeConfig.blockHorizontal(2)),
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
                    Container(
                      margin:
                          EdgeInsets.only(left: SizeConfig.blockHorizontal(4)),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/icons/arrow_down.png"))),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockVertical(3),
            ),
            Text(
              "Date & Time",
              style: greyTextStyle.copyWith(fontWeight: bold),
            ),
            Material(
              elevation: 2,
              child: Container(
                padding: EdgeInsets.only(
                    top: SizeConfig.blockVertical(2),
                    bottom: SizeConfig.blockVertical(2),
                    left: SizeConfig.blockHorizontal(6),
                    right: SizeConfig.blockHorizontal(6)),
                decoration: BoxDecoration(color: kWhiteColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "September",
                      style: blackDarkTextStyle.copyWith(
                          fontSize: 14, fontWeight: bold),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: SizeConfig.blockHorizontal(1)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: SizeConfig.blockVertical(1),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SelectDateItems(day: "Sun", date: 28, id: "Sun"),
                              SelectDateItems(day: "Mon", date: 29, id: "Mon"),
                              SelectDateItems(day: "Tue", date: 30, id: "Tue"),
                              SelectDateItems(day: "Wed", date: 31, id: "Wed"),
                              SelectDateItems(day: "Thu", date: 1, id: "Thu"),
                              SelectDateItems(day: "Fri", date: 2, id: "Fri"),
                              SelectDateItems(day: "Sat", date: 3, id: "Sat"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockVertical(2),
            ),
            Material(
              elevation: 2,
              child: Container(
                padding: EdgeInsets.only(
                    top: SizeConfig.blockVertical(1),
                    bottom: SizeConfig.blockVertical(1),
                    left: SizeConfig.blockHorizontal(2),
                    right: SizeConfig.blockHorizontal(2)),
                decoration: BoxDecoration(color: kWhiteColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          context
                              .read<SelectTimeCubit>()
                              .selectTime("10.50 am");
                          setState(() {
                            leftPostiion = 0;
                            print(leftPostiion);
                          });
                        },
                        child: TimeSelectItems(time: "10.50 am")),
                    GestureDetector(
                        onTap: () {
                          context
                              .read<SelectTimeCubit>()
                              .selectTime("11.05 am");
                          setState(() {
                            leftPostiion = 48;
                            print(leftPostiion);
                          });
                        },
                        child: TimeSelectItems(time: "11.05 am")),
                    GestureDetector(
                        onTap: () {
                          context
                              .read<SelectTimeCubit>()
                              .selectTime("11.30 am");
                          setState(() {
                            leftPostiion = 173;
                            print(leftPostiion);
                          });
                        },
                        child: TimeSelectItems(time: "11.30 am")),
                    GestureDetector(
                        onTap: () {
                          context
                              .read<SelectTimeCubit>()
                              .selectTime("12.00 pm");
                          setState(() {
                            leftPostiion = 222;
                            print(leftPostiion);
                          });
                        },
                        child: TimeSelectItems(time: "12.00 pm"))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockVertical(1),
            ),
            SizedBox(
              height: SizeConfig.blockVertical(1),
              width: SizeConfig.blockHorizontal(100),
              child: Stack(
                children: [
                  AnimatedPositioned(
                    width: SizeConfig.blockHorizontal(34),
                    height: SizeConfig.blockVertical(0.2),
                    duration: Duration(seconds: 1),
                    left: leftPostiion,
                    curve: Curves.linearToEaseOut,
                    child: Container(
                      // margin: EdgeInsets.only(left: SizeConfig.blockHorizontal(12)),

                      color: kGreyColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.blockVertical(1),
            ),
            Text(
              "Payment",
              style: greyTextStyle.copyWith(fontWeight: bold),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, paymentPagePath);
              },
              child: Material(
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.only(
                      top: SizeConfig.blockVertical(2),
                      bottom: SizeConfig.blockVertical(2),
                      left: SizeConfig.blockHorizontal(2),
                      right: SizeConfig.blockHorizontal(2)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          left: BorderSide(color: Colors.brown, width: 4))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Choose payment method",
                          style: blackDarkTextStyle,
                        ),
                        Container(
                            margin: EdgeInsets.only(
                                left: SizeConfig.blockHorizontal(4)),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/icons/arrow_down.png"))))
                      ]),
                ),
              ),
            )
          ]),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(
                  top: SizeConfig.blockVertical(0.7),
                  left: SizeConfig.blockHorizontal(6),
                  right: SizeConfig.blockHorizontal(6),
                  bottom: SizeConfig.blockVertical(14)),
              margin: EdgeInsets.only(top: SizeConfig.blockVertical(4)),
              decoration: BoxDecoration(color: kBlackColor),
              child: Column(children: [
                Container(
                  width: SizeConfig.blockHorizontal(60),
                  height: SizeConfig.blockVertical(.7),
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(40)),
                ),
                Container(
                  margin: EdgeInsets.only(top: SizeConfig.blockVertical(3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rp 150.000",
                          style: whiteTextStyle.copyWith(fontSize: 28)),
                      Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.blockHorizontal(11)),
                        width: SizeConfig.blockHorizontal(30),
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: kWhiteColor,
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40))),
                          child: Text(
                            "Book Now",
                            style: blackTextStyle.copyWith(fontSize: 14),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ))
      ]),
    );
  }
}

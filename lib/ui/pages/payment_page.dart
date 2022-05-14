import 'package:flutter/material.dart';
import 'package:test_hiapp/shared/shared.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

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
            "Payment",
            style: whiteTextStyle,
          )),
      body: Container(
        margin: EdgeInsets.only(
            left: SizeConfig.blockHorizontal(6),
            right: SizeConfig.blockHorizontal(6)),
        child: ListView(children: [
          SizedBox(
            height: SizeConfig.blockHorizontal(8),
          ),
          Center(
            child: Text(
              "Mohon pilih metode pembayaran",
              style: blackDarkTextStyle.copyWith(fontSize: 14),
            ),
          ),
          SizedBox(
            height: SizeConfig.blockHorizontal(8),
          ),
          Material(
              elevation: 2,
              child: Container(
                height: SizeConfig.blockVertical(7),
                margin: EdgeInsets.only(
                    left: SizeConfig.blockHorizontal(6),
                    right: SizeConfig.blockHorizontal(6)),
                padding: EdgeInsets.only(
                    left: SizeConfig.blockHorizontal(1),
                    right: SizeConfig.blockHorizontal(1)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/gopay2.png"))),
                      ),
                      Container(
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ]),
              )),
          SizedBox(
            height: SizeConfig.blockHorizontal(8),
          ),
          Material(
              elevation: 2,
              child: Container(
                height: SizeConfig.blockVertical(7),
                margin: EdgeInsets.only(
                    left: SizeConfig.blockHorizontal(6),
                    right: SizeConfig.blockHorizontal(6)),
                padding: EdgeInsets.only(
                    left: SizeConfig.blockHorizontal(1),
                    right: SizeConfig.blockHorizontal(1)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bank Transfer",
                        style: blackDarkTextStyle.copyWith(fontSize: 18),
                      ),
                      Container(
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ]),
              )),
        ]),
      ),
    );
  }
}

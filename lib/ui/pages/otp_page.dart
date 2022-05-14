import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../../shared/shared.dart';

class OTPPage extends StatelessWidget {
  OTPPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  TextEditingController? otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: SizeConfig.blockVertical(100),
        // decoration: BoxDecoration(color: Color.fromARGB(115, 0, 0, 0)),
        decoration: BoxDecoration(color: kBlackColor),
      );
    }

    Widget costumeShadowImage() {
      return Container(
        width: double.infinity,
        height: SizeConfig.blockVertical(100),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [kGreyColor, Colors.black])),
      );
    }

    Widget footer() {
      return Center(
        child: Container(
          height: SizeConfig.blockVertical(45),
          width: SizeConfig.blockHorizontal(100),
          margin: EdgeInsets.only(
            top: SizeConfig.blockVertical(55),
          ),
          padding: EdgeInsets.only(
            left: SizeConfig.blockHorizontal(4),
            right: SizeConfig.blockHorizontal(4),
            top: SizeConfig.blockVertical(4),
          ),
          decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(18), topRight: Radius.circular(18))),
          child: Column(
            children: [
              Text(
                "Please enter the OTP code",
                style: blackTextStyle.copyWith(fontSize: 18, fontWeight: bold),
              ),
              Text(
                "send to your phone",
                style: blackTextStyle.copyWith(fontSize: 18, fontWeight: bold),
              ),
              Text(
                "+628980556784",
                style: greyTextStyle.copyWith(fontSize: 14),
              ),
              Form(
                key: _formKey,
                child: Container(
                  margin: EdgeInsets.only(top: SizeConfig.blockVertical(0.2)),
                  padding: EdgeInsets.only(
                      left: SizeConfig.blockHorizontal(24),
                      right: SizeConfig.blockHorizontal(24)),
                  child: PinFieldAutoFill(
                    controller: otpController,
                    codeLength: 6,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: SizeConfig.blockVertical(3)),
                padding: EdgeInsets.only(
                    top: SizeConfig.blockVertical(0.3),
                    bottom: SizeConfig.blockVertical(.3),
                    left: SizeConfig.blockHorizontal(18),
                    right: SizeConfig.blockHorizontal(18)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: kBlackColor),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, mainPagepath);
                  },
                  child: Text(
                    'Submit',
                    style:
                        whiteTextStyle.copyWith(fontWeight: bold, fontSize: 14),
                  ),
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
                children: [backgroundImage(), costumeShadowImage(), footer()]),
          ],
        ),
      ),
    );
  }
}

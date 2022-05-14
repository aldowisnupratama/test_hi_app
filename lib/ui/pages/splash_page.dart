import 'dart:async';

import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, loginPagePath, (route) => false);
    });
    super.initState();
  }

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

    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            costumeShadowImage(),
            Center(
              child: Container(
                width: SizeConfig.blockHorizontal(30),
                height: SizeConfig.blockVertical(50),
                margin: EdgeInsets.only(top: SizeConfig.blockVertical(25)),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/logo.png"))),
              ),
            )
          ],
        ),
      ),
    );
  }
}

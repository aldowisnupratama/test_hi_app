import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
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
            "Daftar",
            style: whiteTextStyle,
          )),
      body: Container(
        margin: EdgeInsets.only(
            top: SizeConfig.blockVertical(4),
            left: SizeConfig.blockHorizontal(6),
            right: SizeConfig.blockHorizontal(6)),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Phone Number",
                  style: blackTextStyle,
                ),
                TextFormField(
                  controller: phoneNumberController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please fill in the phone number field";
                    } else {
                      if (value.isValidPhoneNumber() == false) {
                        return "Please fill in the correct phone number";
                      }
                    }
                    return null;
                  },
                  cursorColor: kBlackColor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(color: kBlackColor))),
                ),
                SizedBox(
                  height: SizeConfig.blockVertical(4),
                ),
                Text(
                  "Name",
                  style: blackTextStyle,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please fill in the name field";
                    }
                    return null;
                  },
                  controller: nameController,
                  cursorColor: kBlackColor,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(color: kBlackColor))),
                ),
                SizedBox(
                  height: SizeConfig.blockVertical(4),
                ),
                Text(
                  "Email",
                  style: blackTextStyle,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please fill in the email field";
                    } else {
                      if (!value.isValidEmail()) {
                        return "Please fill in the correct email";
                      }
                    }
                    return null;
                  },
                  controller: emailController,
                  cursorColor: kBlackColor,
                  decoration: InputDecoration(
                      fillColor: kWhiteColor,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(color: kBlackColor))),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: SizeConfig.blockVertical(3)),
                      padding: EdgeInsets.only(
                          top: SizeConfig.blockVertical(1),
                          bottom: SizeConfig.blockVertical(1),
                          left: SizeConfig.blockHorizontal(18),
                          right: SizeConfig.blockHorizontal(18)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: kBlackColor),
                      child: Text(
                        'Daftar',
                        style: whiteTextStyle.copyWith(
                            fontWeight: bold, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: SizeConfig.blockVertical(1)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, loginPagePath, (route) => false);
                      },
                      child: RichText(
                        text: TextSpan(
                            text: "Sudah punya akun? ",
                            style: greyTextStyle,
                            children: [
                              TextSpan(
                                  text: "Masuk",
                                  style:
                                      greyTextStyle.copyWith(fontWeight: bold))
                            ]),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

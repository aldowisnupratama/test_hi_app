import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../shared/shared.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneNumber = TextEditingController();

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

  Widget signUpButton(context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(
            top: SizeConfig.blockVertical(4),
            bottom: SizeConfig.blockVertical(2)),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, signUpPagePath);
          },
          child: Text(
            'Belum mempunyai akun? Daftar',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ),
      ),
    );
  }

  void _onClearTapped() {
    phoneNumber.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              backgroundImage(),
              costumeShadowImage(),
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                      top: SizeConfig.blockVertical(20),
                      left: SizeConfig.blockHorizontal(9),
                      right: SizeConfig.blockHorizontal(8)),
                  child: Column(
                    children: [
                      Text(
                        "Please enter your phone number",
                        style: whiteTextStyle.copyWith(fontSize: 16),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: CountryCodePicker(
                              textStyle: whiteTextStyle.copyWith(fontSize: 30),
                              onChanged: print,
                              initialSelection: 'ID',
                              favorite: ['+62', 'ID'],
                              countryFilter: ['IT', 'FR', 'ID', 'US'],
                              showFlagDialog: true,
                              hideSearch: false,
                              showOnlyCountryWhenClosed: false,
                              showFlag: false,
                            ),
                          ),
                          Container(
                            width: 250,
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please fill in the field";
                                }
                                return null;
                              },
                              cursorColor: kWhiteColor,
                              style: whiteTextStyle.copyWith(fontSize: 28),
                              controller: phoneNumber,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              autocorrect: false,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: SizeConfig.blockVertical(5)),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: kWhiteColor),
                            borderRadius: BorderRadius.circular(40)),
                        width: SizeConfig.blockHorizontal(60),
                        height: 55,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, otpPagePath);
                          },
                          child: Text(
                            "Masuk",
                            style: whiteTextStyle.copyWith(fontSize: 14),
                          ),
                        ),
                      ),
                      signUpButton(context)
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}

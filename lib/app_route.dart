import 'package:flutter/material.dart';
import 'package:test_hiapp/ui/pages/book_page.dart';
import 'package:test_hiapp/ui/pages/home_page.dart';
import 'package:test_hiapp/ui/pages/login_page.dart';
import 'package:test_hiapp/ui/pages/main_page.dart';
import 'package:test_hiapp/ui/pages/otp_page.dart';
import 'package:test_hiapp/ui/pages/payment_page.dart';
import 'package:test_hiapp/ui/pages/queque_page.dart';
import 'package:test_hiapp/ui/pages/sign_up_page.dart';

import 'package:test_hiapp/ui/ui.dart';

import 'shared/shared.dart';

class AppRoute {
  AppRoute();
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashPagepath:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case loginPagePath:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case homePagePath:
        return MaterialPageRoute(builder: (_) => HomePage());

      case mainPagepath:
        return MaterialPageRoute(builder: (_) => MainPage());
      case bookPagePath:
        return MaterialPageRoute(builder: (_) => BookPage());
      case paymentPagePath:
        return MaterialPageRoute(builder: (_) => PaymentPage());
      case antrianPagePath:
        return MaterialPageRoute(builder: (_) => AntrianPage());
      case signUpPagePath:
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case otpPagePath:
        return MaterialPageRoute(builder: (_) => OTPPage());
    }
  }
}

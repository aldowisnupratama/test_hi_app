import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_hiapp/app_route.dart';
import 'package:test_hiapp/cubit/select_date_cubit.dart';
import 'package:test_hiapp/cubit/select_time_cubit.dart';
import 'package:test_hiapp/shared/shared.dart';

void main(List<String> args) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: kBlackColor,
  ));
  runApp(TestHIAPP(route: AppRoute()));
}

class TestHIAPP extends StatelessWidget {
  final AppRoute route;
  const TestHIAPP({Key? key, required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SelectDateCubit()),
        BlocProvider(create: (context) => SelectTimeCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: route.generateRoute,
      ),
    );
  }
}

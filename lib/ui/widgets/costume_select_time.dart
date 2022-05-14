import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/select_time_cubit.dart';
import '../../shared/shared.dart';

class TimeSelectItems extends StatelessWidget {
  final String time;
  const TimeSelectItems({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SelectTimeCubit>().isSelected(time);
    backgroundColor() {
      if (isSelected) {
        return Colors.brown;
      } else {
        return Colors.white;
      }
    }

    child() {
      if (isSelected) {
        return kWhiteColor;
      } else {
        Colors.black;
      }
    }

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: backgroundColor()),
      padding: EdgeInsets.only(
          top: SizeConfig.blockVertical(0.5),
          bottom: SizeConfig.blockVertical(0.5),
          left: SizeConfig.blockHorizontal(1.5),
          right: SizeConfig.blockHorizontal(1.5)),
      child: Text(
        time,
        style: blackDarkTextStyle.copyWith(color: child()),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/select_date_cubit.dart';
import '../../shared/shared.dart';

class SelectDateItems extends StatelessWidget {
  final String day;
  final String id;
  final int date;
  const SelectDateItems(
      {Key? key, required this.day, required this.date, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SelectDateCubit>().isSelected(id);
    backgroundColor() {
      if (isSelected) {
        return Colors.brown;
      } else {
        return kInactiveColor;
      }
    }

    child() {
      if (isSelected) {
        return whiteTextStyle;
      } else {
        return blackDarkTextStyle;
      }
    }

    return Column(
      children: [
        Text(
          day,
          style: blackTextStyle,
        ),
        SizedBox(
          height: SizeConfig.blockVertical(.2),
        ),
        GestureDetector(
          onTap: () {
            context.read<SelectDateCubit>().selectDate(id);
          },
          child: Container(
            width: 32,
            height: 32,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: backgroundColor()),
            child: Center(
              child: Text(
                date.toString(),
                style: child(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

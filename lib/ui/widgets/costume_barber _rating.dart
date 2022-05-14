import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class BarberRateIcons extends StatefulWidget {
  const BarberRateIcons({Key? key}) : super(key: key);

  @override
  State<BarberRateIcons> createState() => _BarberRateIconsState();
}

class _BarberRateIconsState extends State<BarberRateIcons> {
  bool rate1 = false;
  bool rate2 = false;
  bool rate3 = false;
  bool rate4 = false;
  bool rate5 = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              rate1 = true;
              rate2 = false;
              rate3 = false;
              rate4 = false;
              rate5 = false;
            });
          },
          icon: Icon(
            Icons.star,
            color: (rate1 == true ? kGoldColor : kGreyColor),
            size: 45,
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              rate1 = true;
              rate2 = true;
              rate3 = false;
              rate4 = false;
              rate5 = false;
            });
          },
          icon: Icon(
            Icons.star,
            color: (rate2 == true ? kGoldColor : kGreyColor),
            size: 45,
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              rate1 = true;
              rate2 = true;
              rate3 = true;
              rate4 = false;
              rate5 = false;
            });
          },
          icon: Icon(
            Icons.star,
            color: (rate3 == true ? kGoldColor : kGreyColor),
            size: 45,
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              rate1 = true;
              rate2 = true;
              rate3 = true;
              rate4 = true;
              rate5 = false;
            });
          },
          icon: Icon(
            Icons.star,
            color: (rate4 == true ? kGoldColor : kGreyColor),
            size: 45,
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              rate1 = true;
              rate2 = true;
              rate3 = true;
              rate4 = true;
              rate5 = true;
            });
          },
          icon: Icon(
            Icons.star,
            color: (rate5 == true ? kGoldColor : kGreyColor),
            size: 45,
          ),
        ),
      ],
    );
  }
}

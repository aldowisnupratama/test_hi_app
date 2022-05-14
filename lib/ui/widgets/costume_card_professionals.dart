import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class ProfessionalCard extends StatelessWidget {
  final String name;
  final int numberOfStar;
  final String imageSource;
  const ProfessionalCard(
      {Key? key,
      required this.name,
      required this.numberOfStar,
      required this.imageSource})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: SizeConfig.blockHorizontal(4),
          bottom: SizeConfig.blockVertical(1.8)),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imageSource))),
          ),
          Text(
            name,
            style: greyTextStyle.copyWith(fontSize: 12, fontWeight: bold),
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: (numberOfStar - 1 >= 0 ? kGoldColor : kGreyColor),
                size: 15,
              ),
              Icon(
                Icons.star,
                color: (numberOfStar - 2 >= 0 ? kGoldColor : kGreyColor),
                size: 15,
              ),
              Icon(
                Icons.star,
                color: (numberOfStar - 3 >= 0 ? kGoldColor : kGreyColor),
                size: 15,
              ),
              Icon(
                Icons.star,
                color: (numberOfStar - 4 >= 0 ? kGoldColor : kGreyColor),
                size: 15,
              ),
              Icon(
                Icons.star,
                color: (numberOfStar - 5 >= 0 ? kGoldColor : kGreyColor),
                size: 15,
              ),
            ],
          )
        ],
      ),
    );
  }
}

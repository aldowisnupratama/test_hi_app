import 'package:flutter/material.dart';
import 'package:test_hiapp/shared/shared.dart';

class NewsCard extends StatelessWidget {
  final String source;
  const NewsCard({Key? key, required this.source}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: SizeConfig.blockVertical(2),
          right: SizeConfig.blockHorizontal(2)),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(source))),
    );
  }
}

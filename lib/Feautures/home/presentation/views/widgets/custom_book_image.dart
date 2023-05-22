import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey
        ),
        child: Image(
          image: AssetImage(AssetsData.testImage),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
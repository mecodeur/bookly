import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class FeatureBooksListViewItem extends StatelessWidget {
  const FeatureBooksListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        padding: EdgeInsets.zero,
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
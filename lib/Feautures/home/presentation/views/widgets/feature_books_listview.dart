import 'package:flutter/material.dart';

import 'feature_books_listview_item.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return FeatureBooksListViewItem();
          }),
    );
  }
}
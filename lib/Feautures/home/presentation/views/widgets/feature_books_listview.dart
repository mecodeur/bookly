import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomListViewItem(),
            );
          }),
    );
  }
}
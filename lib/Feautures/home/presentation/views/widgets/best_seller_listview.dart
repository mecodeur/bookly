import 'package:bookly/Feautures/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return BestSellerListViewItem();
          }),
    );
  }
}

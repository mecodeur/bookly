import 'package:bookly/Feautures/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: (){
                GoRouter.of(context).push(AppRouter.kBookDetailsView);
              },
              child: BestSellerListViewItem());
        });
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/styles.dart';
import '../../../home/presentation/views/widgets/book_list_view_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 16,),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(height: 16,),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: (){
                GoRouter.of(context).push(AppRouter.kBookDetailsView);
              },
              child: BookListViewItem());
        });
  }
}

import 'package:bookly/Feautures/home/presentation/views/widgets/similar_books_listview.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You can also like',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            )),
        SizedBox(
          height: 6,
        ),
        SimilarBooksListView(),
      ],
    );
  }
}

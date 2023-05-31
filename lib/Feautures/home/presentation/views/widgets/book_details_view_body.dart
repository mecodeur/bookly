import 'package:bookly/Feautures/home/data/models/book_model/book_model.dart';
import 'package:bookly/Feautures/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    Key? key,
    required this.bookModel,
  }) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(bookModel: bookModel,),
                Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

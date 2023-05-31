import 'package:bookly/Feautures/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',),
        ),
        SizedBox(
          height: 43,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold, ),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors?.first ?? '',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center, rating: bookModel.volumeInfo.averageRating ?? 0, count: bookModel.volumeInfo.ratingsCount ?? 0,
        ),
        SizedBox(
          height: 40,
        ),
        BooksAction(bookModel: bookModel,),
      ],
    );
  }
}

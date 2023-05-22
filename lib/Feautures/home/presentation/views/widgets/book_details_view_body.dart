import 'package:bookly/Feautures/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Feautures/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: CustomBookImage(),
          ),
          SizedBox(
            height: 43,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          BookRating(mainAxisAlignment: MainAxisAlignment.center,),
        ],
      ),
    );
  }
}

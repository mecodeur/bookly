import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(imageUrl: 'http://books.google.com/books/content?id=IjUfnNAVeLoC&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE70ooj2NiBBDAl32kBpl-SPPR9OnQ7zsWrWI27QhGLhvncaRB1sdf_dbomx8uVPQTMw9OmiebjvRqehIMAYmPmxOkFif5KBBaxQHW6feujY8_gRdseBHTuazTIf3kGZFXcMW_90j&source=gbs_api',),
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
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 40,
        ),
        BooksAction(),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../core/utils/function/launch_url.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../data/models/book_model/book_model.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            text: '19.99€',
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          )),
          Expanded(
              child: CustomButton(
                onPressed: () async {
                  launchCustomUr(context, 'bookModel.volumeInfo.previewLink');
                },
            fontSize: 16,
            text: getText(bookModel),
            textColor: Colors.white,
            backgroundColor: Color(0xffEF8262),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          )),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Preview';
    }
  }
}

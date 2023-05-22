import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

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
                borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
              )),
          Expanded(
              child: CustomButton(
                fontSize: 16,
                text: 'Free Preview',
                textColor: Colors.white,
                backgroundColor: Color(0xffEF8262),
                borderRadius: BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
              )),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(imageUrl: 'http://books.google.com/books/content?id=IjUfnNAVeLoC&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE70ooj2NiBBDAl32kBpl-SPPR9OnQ7zsWrWI27QhGLhvncaRB1sdf_dbomx8uVPQTMw9OmiebjvRqehIMAYmPmxOkFif5KBBaxQHW6feujY8_gRdseBHTuazTIf3kGZFXcMW_90j&source=gbs_api',),
            );
          }),
    );
  }
}

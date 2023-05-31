import 'package:bookly/Feautures/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
  builder: (context, state) {
    if (state is SimilarBooksSuccess) {
      return SizedBox(
            height: MediaQuery.of(context).size.height * .17,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',),
                  );
                }),
          );
    }else if (state is SimilarBooksFailure){
      return CustomErrorWidget(errMessage: state.errMessage);
    } else {
      return CustomLoadingIndicator();
    }
  },
);
  }
}

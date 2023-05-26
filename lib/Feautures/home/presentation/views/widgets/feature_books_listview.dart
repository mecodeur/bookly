import 'package:bookly/Feautures/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {

        if (state is FeaturedBooksSuccess) {
          return SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * .3,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: state.books.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,),
                          );
                        }),
                  );
        }
        else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        }else{
          return CustomLoadingIndicator();
        }

      },
    );
  }
}

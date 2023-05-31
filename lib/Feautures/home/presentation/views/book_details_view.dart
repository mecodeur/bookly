import 'package:bookly/Feautures/home/data/models/book_model/book_model.dart';
import 'package:bookly/Feautures/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Feautures/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({Key? key, required this.books}) : super(key: key);

  final BookModel books;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {

  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).feetchSimilarBooks(
        category: widget.books.volumeInfo.categories![0],
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(),
      ),
    );
  }
}

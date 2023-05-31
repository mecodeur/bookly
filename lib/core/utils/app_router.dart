import 'package:bookly/Feautures/home/data/models/book_model/book_model.dart';
import 'package:bookly/Feautures/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Feautures/home/presentation/views/book_details_view.dart';
import 'package:bookly/Feautures/search/presentation/views/search_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Feautures/home/data/repos/home_repo_impl.dart';
import '../../Feautures/home/presentation/views/home_view.dart';
import '../../Feautures/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kSearchView = '/searchView';
  static const kBookDetailsView = '/bookDetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => SearchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) =>
            BlocProvider(
              create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
              child: BookDetailsView(bookModel:
                state.extra as BookModel
                ,),
            ),
      ),
    ],
  );

 
}

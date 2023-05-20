import 'package:bookly/Feautures/home/presentation/views/book_details_view.dart';
import 'package:go_router/go_router.dart';

import '../../Feautures/home/presentation/views/home_view.dart';
import '../../Feautures/splash/presentation/views/splash_view.dart';

abstract class AppRouter{
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BookDetailsView(),
      ),
    ],
  );
}
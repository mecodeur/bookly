import 'package:bookly/Feautures/home/data/models/book_model/book_model.dart';
import 'package:bookly/Feautures/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {

  ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> feetchNewsetBooks() async{

    try {
      var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');

      List<BookModel> book = [];
      for(var item in data['items']){
            book.add(BookModel.fromJson(item));
          }

      return right(book);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}

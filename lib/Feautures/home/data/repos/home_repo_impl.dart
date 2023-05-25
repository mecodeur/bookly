import 'package:bookly/Feautures/home/data/models/book_model/book_model.dart';
import 'package:bookly/Feautures/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {

  ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> feetchNewsetBooks() async{

    try {
      var data = await apiService.get(endPoint: 'volumes?Filtering=free-eboohks&Sorting=newest &q=computer science');

      List<BookModel> book = [];
      for(var item in data['items']){
            book.add(BookModel.fromJson(item));
          }

      return right(book);
    } catch (e) {
      if(e is DioError){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{
    try {
      var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');

      List<BookModel> book = [];
      for(var item in data['items']){
        book.add(BookModel.fromJson(item));
      }

      return right(book);
    } catch (e) {
      if(e is DioError){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

}

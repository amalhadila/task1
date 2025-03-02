import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task/core/error/failures.dart';
import 'package:task/core/utils/api_service.dart';
import 'package:task/features/home/data/models/home_model.dart';
import 'package:task/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
      final ApiService apiService;

  HomeRepoImpl( this.apiService);
     Future<Either<Failure, List<HomeModel>>> fetchhome_items() async{
       try {
      var data = await apiService.get(endpoint: 'lessons_list/1');
      List<HomeModel> homedata = [];
      for (var item in data['lessons']) {
        homedata.add(HomeModel.fromJson(item));
      }
      return right(homedata);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

     }

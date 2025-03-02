import 'package:dartz/dartz.dart';
import 'package:task/core/error/failures.dart';
import 'package:task/features/home/data/models/home_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<HomeModel>>> fetchhome_items();
}
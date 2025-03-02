import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/utils/api_service.dart';
import 'package:task/features/home/data/repos/home_repo_impl.dart';
import 'package:task/features/home/presentation/manager/cubit/fetch_home_items_cubit.dart';
import 'package:task/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchHomeItemsCubit(HomeRepoImpl(ApiService(Dio())))..fetchHomeItems(),
      child: HomeViewBody(),
    );
  }
}

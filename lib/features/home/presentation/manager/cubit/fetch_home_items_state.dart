part of 'fetch_home_items_cubit.dart';

sealed class FetchHomeItemsState extends Equatable {
  const FetchHomeItemsState();

  @override
  List<Object> get props => [];
}

final class FetchHomeItemsInitial extends FetchHomeItemsState {}
class FetchHomeItemsLoading extends FetchHomeItemsState {}

class FetchHomeItemsFailure extends FetchHomeItemsState {
  final String errMessage;

  const FetchHomeItemsFailure(this.errMessage);
}

class FetchHomeItemsSuccess extends FetchHomeItemsState {
  final List<HomeModel> homelist;

  const FetchHomeItemsSuccess(this.homelist);
}
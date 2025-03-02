import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task/features/home/data/models/home_model.dart';
import 'package:task/features/home/data/repos/home_repo.dart';

part 'fetch_home_items_state.dart';

class FetchHomeItemsCubit extends Cubit<FetchHomeItemsState> {
  FetchHomeItemsCubit(this.homeRepo) : super(FetchHomeItemsInitial());
final HomeRepo homeRepo;
  bool _closed = false;

  @override
  Future<void> close() async {
    _closed = true;
    return super.close();
  }

  Future<void> fetchHomeItems() async {
    if (_closed) return;
    emit(FetchHomeItemsLoading());
    var result = await homeRepo.fetchhome_items();
    result.fold((Failure) {
      if (!_closed) emit(FetchHomeItemsFailure(Failure.message));
    }, (HomeItems) {
      if (!_closed) emit(FetchHomeItemsSuccess(HomeItems));
    });
  }
}
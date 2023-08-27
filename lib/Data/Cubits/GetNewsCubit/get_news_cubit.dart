import 'package:bloc/bloc.dart';
import 'package:figma/Data/Model/get_news_model.dart';
import 'package:figma/Data/Repository/get_news_repo.dart';
import 'package:meta/meta.dart';

part 'get_news_state.dart';

class GetNewsCubit extends Cubit<GetNewsState> {
  GetNewsCubit() : super(GetNewsInitial());

  GetNewsRepo newsRepo = GetNewsRepo();

  getNew() async {
    emit(GetNewsLoading());

    try {
      await newsRepo.getNews().then((value) {
        if (value != null) {
          emit(GetNewsSuccess(response:value));
        } else {
          emit(GetNewsError());
        }
      });
    } catch (error) {
      emit(GetNewsError());
    }
  }
}

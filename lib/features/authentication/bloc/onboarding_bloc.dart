import 'package:flutter_bloc/flutter_bloc.dart';
import 'onboarding_event.dart';
import 'onboarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  static const int totalPages = 3; // change based on your onboarding pages

  OnBoardingBloc() : super(const OnBoardingState()) {
   on<PageChanged>(_pageChange);
   on<NextPressed>(_nextPressed);
   on<SkipPressed>(_skipPressed);
  }
  void _pageChange(PageChanged event, Emitter<OnBoardingState> emit){
     emit(state.copyWith(currentPage:event.pageIndex,isSkip: false));
  }
  void _nextPressed(NextPressed event, Emitter<OnBoardingState> emit){
    if(state.currentPage<totalPages-1){
      emit(state.copyWith(
        currentPage: state.currentPage + 1,
        isSkip: false,
      ));
    }
    else {
      emit(state.copyWith(isCompleted: true));
    }
  }
 Future<void> _skipPressed(SkipPressed event, Emitter<OnBoardingState> emit) async{
    emit(state.copyWith(currentPage:totalPages-1,isSkip: true));
  await  Future.delayed(Duration(seconds: 3),(){
    emit(state.copyWith(currentPage:totalPages-1,isSkip: false));
    });
  }
}

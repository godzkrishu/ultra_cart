import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.freezed.dart';

@freezed
abstract class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState({
    @Default(0) int currentPage,
    @Default(false) bool isSkip,
    @Default(false) bool isCompleted,
  }) = _OnBoardingState;
}

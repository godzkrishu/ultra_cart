import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_event.freezed.dart';

@freezed
class OnBoardingEvent with _$OnBoardingEvent {
  const factory OnBoardingEvent.pageChanged(int pageIndex) = PageChanged;
  const factory OnBoardingEvent.nextPressed() = NextPressed;
  const factory OnBoardingEvent.skipPressed() = SkipPressed;
}

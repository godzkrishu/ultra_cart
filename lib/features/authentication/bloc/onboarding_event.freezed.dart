// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnBoardingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnBoardingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnBoardingEvent()';
}


}

/// @nodoc
class $OnBoardingEventCopyWith<$Res>  {
$OnBoardingEventCopyWith(OnBoardingEvent _, $Res Function(OnBoardingEvent) __);
}


/// Adds pattern-matching-related methods to [OnBoardingEvent].
extension OnBoardingEventPatterns on OnBoardingEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PageChanged value)?  pageChanged,TResult Function( NextPressed value)?  nextPressed,TResult Function( SkipPressed value)?  skipPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PageChanged() when pageChanged != null:
return pageChanged(_that);case NextPressed() when nextPressed != null:
return nextPressed(_that);case SkipPressed() when skipPressed != null:
return skipPressed(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PageChanged value)  pageChanged,required TResult Function( NextPressed value)  nextPressed,required TResult Function( SkipPressed value)  skipPressed,}){
final _that = this;
switch (_that) {
case PageChanged():
return pageChanged(_that);case NextPressed():
return nextPressed(_that);case SkipPressed():
return skipPressed(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PageChanged value)?  pageChanged,TResult? Function( NextPressed value)?  nextPressed,TResult? Function( SkipPressed value)?  skipPressed,}){
final _that = this;
switch (_that) {
case PageChanged() when pageChanged != null:
return pageChanged(_that);case NextPressed() when nextPressed != null:
return nextPressed(_that);case SkipPressed() when skipPressed != null:
return skipPressed(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int pageIndex)?  pageChanged,TResult Function()?  nextPressed,TResult Function()?  skipPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PageChanged() when pageChanged != null:
return pageChanged(_that.pageIndex);case NextPressed() when nextPressed != null:
return nextPressed();case SkipPressed() when skipPressed != null:
return skipPressed();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int pageIndex)  pageChanged,required TResult Function()  nextPressed,required TResult Function()  skipPressed,}) {final _that = this;
switch (_that) {
case PageChanged():
return pageChanged(_that.pageIndex);case NextPressed():
return nextPressed();case SkipPressed():
return skipPressed();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int pageIndex)?  pageChanged,TResult? Function()?  nextPressed,TResult? Function()?  skipPressed,}) {final _that = this;
switch (_that) {
case PageChanged() when pageChanged != null:
return pageChanged(_that.pageIndex);case NextPressed() when nextPressed != null:
return nextPressed();case SkipPressed() when skipPressed != null:
return skipPressed();case _:
  return null;

}
}

}

/// @nodoc


class PageChanged implements OnBoardingEvent {
  const PageChanged(this.pageIndex);
  

 final  int pageIndex;

/// Create a copy of OnBoardingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PageChangedCopyWith<PageChanged> get copyWith => _$PageChangedCopyWithImpl<PageChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PageChanged&&(identical(other.pageIndex, pageIndex) || other.pageIndex == pageIndex));
}


@override
int get hashCode => Object.hash(runtimeType,pageIndex);

@override
String toString() {
  return 'OnBoardingEvent.pageChanged(pageIndex: $pageIndex)';
}


}

/// @nodoc
abstract mixin class $PageChangedCopyWith<$Res> implements $OnBoardingEventCopyWith<$Res> {
  factory $PageChangedCopyWith(PageChanged value, $Res Function(PageChanged) _then) = _$PageChangedCopyWithImpl;
@useResult
$Res call({
 int pageIndex
});




}
/// @nodoc
class _$PageChangedCopyWithImpl<$Res>
    implements $PageChangedCopyWith<$Res> {
  _$PageChangedCopyWithImpl(this._self, this._then);

  final PageChanged _self;
  final $Res Function(PageChanged) _then;

/// Create a copy of OnBoardingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pageIndex = null,}) {
  return _then(PageChanged(
null == pageIndex ? _self.pageIndex : pageIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class NextPressed implements OnBoardingEvent {
  const NextPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NextPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnBoardingEvent.nextPressed()';
}


}




/// @nodoc


class SkipPressed implements OnBoardingEvent {
  const SkipPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkipPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnBoardingEvent.skipPressed()';
}


}




// dart format on

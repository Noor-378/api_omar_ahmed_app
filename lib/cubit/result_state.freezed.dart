// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResultState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResultState<$T>()';
}


}

/// @nodoc
class $ResultStateCopyWith<T,$Res>  {
$ResultStateCopyWith(ResultState<T> _, $Res Function(ResultState<T>) __);
}


/// Adds pattern-matching-related methods to [ResultState].
extension ResultStatePatterns<T> on ResultState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Idle<T> value)?  idl,TResult Function( Loading<T> value)?  loading,TResult Function( Success<T> value)?  success,TResult Function( Error<T> value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Idle() when idl != null:
return idl(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Idle<T> value)  idl,required TResult Function( Loading<T> value)  loading,required TResult Function( Success<T> value)  success,required TResult Function( Error<T> value)  error,}){
final _that = this;
switch (_that) {
case Idle():
return idl(_that);case Loading():
return loading(_that);case Success():
return success(_that);case Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Idle<T> value)?  idl,TResult? Function( Loading<T> value)?  loading,TResult? Function( Success<T> value)?  success,TResult? Function( Error<T> value)?  error,}){
final _that = this;
switch (_that) {
case Idle() when idl != null:
return idl(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idl,TResult Function()?  loading,TResult Function( T data)?  success,TResult Function( NetworkExceptions networkExceptions)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Idle() when idl != null:
return idl();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.data);case Error() when error != null:
return error(_that.networkExceptions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idl,required TResult Function()  loading,required TResult Function( T data)  success,required TResult Function( NetworkExceptions networkExceptions)  error,}) {final _that = this;
switch (_that) {
case Idle():
return idl();case Loading():
return loading();case Success():
return success(_that.data);case Error():
return error(_that.networkExceptions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idl,TResult? Function()?  loading,TResult? Function( T data)?  success,TResult? Function( NetworkExceptions networkExceptions)?  error,}) {final _that = this;
switch (_that) {
case Idle() when idl != null:
return idl();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.data);case Error() when error != null:
return error(_that.networkExceptions);case _:
  return null;

}
}

}

/// @nodoc


class Idle<T> implements ResultState<T> {
  const Idle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Idle<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResultState<$T>.idl()';
}


}




/// @nodoc


class Loading<T> implements ResultState<T> {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResultState<$T>.loading()';
}


}




/// @nodoc


class Success<T> implements ResultState<T> {
  const Success(this.data);
  

 final  T data;

/// Create a copy of ResultState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<T, Success<T>> get copyWith => _$SuccessCopyWithImpl<T, Success<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ResultState<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<T,$Res> implements $ResultStateCopyWith<T, $Res> {
  factory $SuccessCopyWith(Success<T> value, $Res Function(Success<T>) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$SuccessCopyWithImpl<T,$Res>
    implements $SuccessCopyWith<T, $Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success<T> _self;
  final $Res Function(Success<T>) _then;

/// Create a copy of ResultState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(Success<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class Error<T> implements ResultState<T> {
  const Error(this.networkExceptions);
  

 final  NetworkExceptions networkExceptions;

/// Create a copy of ResultState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<T, Error<T>> get copyWith => _$ErrorCopyWithImpl<T, Error<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error<T>&&(identical(other.networkExceptions, networkExceptions) || other.networkExceptions == networkExceptions));
}


@override
int get hashCode => Object.hash(runtimeType,networkExceptions);

@override
String toString() {
  return 'ResultState<$T>.error(networkExceptions: $networkExceptions)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<T,$Res> implements $ResultStateCopyWith<T, $Res> {
  factory $ErrorCopyWith(Error<T> value, $Res Function(Error<T>) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 NetworkExceptions networkExceptions
});


$NetworkExceptionsCopyWith<$Res> get networkExceptions;

}
/// @nodoc
class _$ErrorCopyWithImpl<T,$Res>
    implements $ErrorCopyWith<T, $Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error<T> _self;
  final $Res Function(Error<T>) _then;

/// Create a copy of ResultState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? networkExceptions = null,}) {
  return _then(Error<T>(
null == networkExceptions ? _self.networkExceptions : networkExceptions // ignore: cast_nullable_to_non_nullable
as NetworkExceptions,
  ));
}

/// Create a copy of ResultState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkExceptionsCopyWith<$Res> get networkExceptions {
  
  return $NetworkExceptionsCopyWith<$Res>(_self.networkExceptions, (value) {
    return _then(_self.copyWith(networkExceptions: value));
  });
}
}

// dart format on

// part of 'my_cubit.dart';

// @immutable
// sealed class MyState {}

// final class MyInitial extends MyState {}

// final class GetAllUsers extends MyState {
//   final List<User> allUsersList;
//   GetAllUsers(this.allUsersList);
// }

// final class GetUserDetails extends MyState {
//   final User userDetails;
//   GetUserDetails(this.userDetails);
// }

// final class CreateNewUser extends MyState {
//   final User newUser;
//   CreateNewUser(this.newUser);
// }

// final class DeleteUser extends MyState {
//   final dynamic data;
//   DeleteUser(this.data);
// }
/////////////////////////////////
// old state
import "package:api_app/network_exceptions.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part 'result_state.freezed.dart';

@freezed
class ResultState<T> with _$ResultState<T>{
  const factory ResultState.idl() = Idle<T>;
  const factory ResultState.loading() = Loading<T>;
  const factory ResultState.success(T data) = Success<T>;
  const factory ResultState.error(NetworkExceptions networkExceptions) = Error<T>;
}

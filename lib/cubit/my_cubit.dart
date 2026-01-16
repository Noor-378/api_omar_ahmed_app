// import 'package:api_app/my_repo.dart';
// import 'package:api_app/user.dart';
// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';

// part 'my_state.dart';

// class MyCubit extends Cubit<MyState> {
//   final MyRepo myRepo;
//   MyCubit(this.myRepo) : super(MyInitial());
//   void emitGetAllUsers() {
//     myRepo.getAllUsers().then((usersList) {
//       emit(GetAllUsers(usersList));
//     });
//   }

//   void emitGetUserDetails(int userId) {
//     myRepo.getUserById(userId).then((userDetails) {
//       emit(GetUserDetails(userDetails));
//     });
//   }

//   void emitCreateNewUser(User newUser) {
//     var response = myRepo.createNewUser(newUser).then((newUser) {
//       emit(CreateNewUser(newUser));
//     });
//   }

//   void emitDeleteUser(String userId) {
//     var response = myRepo.deleteUse(userId).then((response) {
//       emit(DeleteUser(response));

//       // test
//       emitGetAllUsers();
//     });
//   }
// }

//////////////////////////////////
// new cubit using freezed

import 'package:api_app/api_result.dart';
import 'package:api_app/cubit/result_state.dart';
import 'package:api_app/my_repo.dart';
import 'package:api_app/network_exceptions.dart';
import 'package:api_app/user.dart';
import 'package:bloc/bloc.dart';

class MyCubit extends Cubit<ResultState<List<User>>> {
  final MyRepo myRepo;
  MyCubit(this.myRepo) : super(const Idle());
  void emitGetAllUsers() async {
    // myRepo.getAllUsers().then((usersList) {
    //   emit(GetAllUsers(usersList));
    // });
    // with freezed
    var data = await myRepo.getAllUsers();
    data.when(
      success: (List<User> allUsers) {
        emit(ResultState.success(allUsers));
      },
      failure: (NetworkExceptions networkExceptions) {
        emit(ResultState.error(networkExceptions));
      },
    );
  }

  // void emitGetUserDetails(int userId) {
  //   myRepo.getUserById(userId).then((userDetails) {
  //     emit(GetUserDetails(userDetails));
  //   });
  // }

  // void emitCreateNewUser(User newUser) {
  //   var response = myRepo.createNewUser(newUser).then((newUser) {
  //     emit(CreateNewUser(newUser));
  //   });
  // }

  // void emitDeleteUser(String userId) {
  //   var response = myRepo.deleteUse(userId).then((response) {
  //     emit(DeleteUser(response));

  //     // test
  //     emitGetAllUsers();
  //   });
  // }
}

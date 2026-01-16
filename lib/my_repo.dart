import 'package:api_app/api_result.dart';
import 'package:api_app/my_strings.dart';
import 'package:api_app/network_exceptions.dart';
import 'package:api_app/user.dart';
import 'package:api_app/web_services.dart';

class MyRepo {
  final WebServices webServices;
  MyRepo(this.webServices);
  Future<ApiResult<List<User>>> getAllUsers() async {
    // new way using freezed
    try {
      var response = await webServices.getAllUsers();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }

    ///////////////////////// the old way ///////////////////////////////////////////////////////
    // var response = await webServices.getAllUsers();
    // // return response.map((userObject) => User.fromJson(userObject.toJson()),).toList();
    // return response;
  }

  //    // return response.map((userObject) => User.fromJson(userObject.toJson()),).toList();
  // you take the response then map it (mean loop on it)
  // then you takes each User object from the list
  // then every object you take him and covert it to json
  // then you take every json and assent it to the model

  Future<User> getUserById(int userId) async {
    var response = await webServices.getUserById(userId);
    // if the response is list we use map but here it return one object
    // so we do it like this
    // return User.fromJson(response.toJson());
    return response;
  }

  Future<User> createNewUser(User newUser) async {
    var response = await webServices.createNewUser(
      newUser,
      "Bearer $accessToken",
    );
    return response;
  }

  Future deleteUse(String userId) async {
    var response = await webServices.deleteUser(userId, "Bearer $accessToken");
    return response;
  }
}

import 'package:api_app/user.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
// to make dart run build_runner build you must use part to let him know
part 'web_services.g.dart';

@RestApi(baseUrl: 'https://gorest.co.in/public/v2/')
abstract class WebServices {
  factory WebServices(Dio dio, {String? baseUrl}) = _WebServices;

  @GET('users')
  Future<List<User>> getAllUsers();

  @GET(
    'users/{id}',
  ) // you can add a string in the path to make like the JsonKey to change the name
  Future<User> getUserById(@Path("id") int userId);

  @POST('users')
  Future<User> createNewUser(
    @Body() User newUser,
    @Header('Authorization') String token,
  );
  @DELETE('users/{id}')
  Future<HttpResponse> deleteUser(
    @Path("id") String userId,
    @Header('Authorization') String token,
  );
}

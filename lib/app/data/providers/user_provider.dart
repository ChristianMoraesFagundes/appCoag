import 'package:app_covid_2/app/data/model/user_model.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

class UserProvider {
  Future loginComEmail(String email, String password) async {
    final parseUser = ParseUser(email, password, null);

    final response = await parseUser.login();
    if (response.success) {
      print(response.result);
      return response;
    } else {}
  }

  Future<UserModel> userconectado() async {
    var user = await ParseUser.currentUser();

    if (user != null) {
      print(user);
      return UserModel.fromParse(user);
    } else {
      return UserModel("id", "name", "email", false, "username");
    }
  }
}

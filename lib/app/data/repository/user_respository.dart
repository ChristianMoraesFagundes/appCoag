import 'package:app_covid_2/app/data/model/user_model.dart';
import 'package:app_covid_2/app/data/providers/user_provider.dart';

class UserRepository {
  final UserProvider userProvider;
  UserRepository(this.userProvider);

  void loginComEmail(String email, String password) async {
    final response = await userProvider.loginComEmail(email, password);
  }

  Future<UserModel> userconectado() async {
    UserModel user = await userProvider.userconectado();
    return user;
  }
}

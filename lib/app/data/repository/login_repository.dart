import 'package:app_covid_2/app/data/providers/user_provider.dart';

class LoginRepository {
  final UserProvider userProvider;
  LoginRepository(this.userProvider);

  void loginComEmail(String email, String password) async {
    final response = await userProvider.loginComEmail(email, password);
  }
}

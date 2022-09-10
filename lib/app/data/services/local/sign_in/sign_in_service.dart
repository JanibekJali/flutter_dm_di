import 'package:flutter_dm_di/app/presentation/models/user_model.dart';

abstract class SignInService {
  /// abstractnyi -  bul koddun ichinde ushuday koddor bar bolsun dep chertejun sizip aldik
  /// abstract - ech kanday ish atkarbait bolgonu ushunday bolsun degen sharttardy tuzup alabiz
  UserModel getCurrentUser(String userId);
  Future<UserModel> signIn(String email, String password);
}

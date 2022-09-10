import 'package:flutter_dm_di/app/data/services/local/sign_in/sign_in_service.dart';
import 'package:flutter_dm_di/app/presentation/models/user_model.dart';

class FirebaseAuthServices extends SignInService {
  @override
  UserModel getCurrentUser(String userId) {
    return UserModel(
      id: userId,
      name: 'Firebase',
      email: 'firebase@firebase.com',
    );
  }

  @override
  Future<UserModel> signIn(String email, String password) async {
    return await Future.delayed(const Duration(seconds: 1), () {
      return UserModel(
        id: '001',
        name: 'Firebase',
        email: email,
      );
    });
  }
}

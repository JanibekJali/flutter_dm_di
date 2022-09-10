import 'package:flutter_dm_di/app/data/services/local/sign_in/sign_in_service.dart';
import 'package:flutter_dm_di/app/presentation/models/user_model.dart';

class SignInRepository {
  /// SigninServices is an abstract class used for authentication
  final SignInService _signInService;

  ///
  // final FirebaseAuthServices firebaseAuthServices;

  SignInRepository(this._signInService);
  // SignInRepository(SignInService signInService)
  //     : _signInService = signInService;
  // SignInRepository()
  //     : _signInService = getIt<AwsAuthServices>(),
  // _firebaseAuthServices = getIt<FirebaseAuthServices>();

  UserModel getCurrentUser(String userId) {
    return _signInService.getCurrentUser(userId);
  }

  Future<UserModel> signIn(String email, String password) async {
    return await _signInService.signIn(email, password);
  }
}

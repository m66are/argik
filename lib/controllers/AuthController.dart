import 'package:fireauth/controllers/auth_controller.dart';
import 'package:fireauth/utilities/server_response.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:toast/toast.dart';

class AuthController extends GetxController {
  final AuthService _authService = AuthService();

  Rxn<User> user = Rxn();

  @override
  void onInit() {
    user.value = _authService.firebaseUser;

    super.onInit();
  }

  Future<bool> signUp({required String email, required String password}) async {
    ServerResponse result = await _authService.signUpWithEmailAndPassword(
        email: email, password: password);
    user.value = _authService.firebaseUser;
    if (!result.success) {
      Toast.show(result.errorMessage ?? "Unknown error");
    }
    return result.success;
  }

  Future<bool> signIn({required String email, required String password}) async {
    ServerResponse result = await _authService.signInWithEmailAndPassword(
        email: email, password: password);
    user.value = _authService.firebaseUser;
    if (!result.success) {
      Toast.show(result.errorMessage ?? "Unknown error");
    }
    return result.success;
  }

  Future<void> signOut() async {
    var result = await _authService.signOut();
    user.value = _authService.firebaseUser;
  }
}

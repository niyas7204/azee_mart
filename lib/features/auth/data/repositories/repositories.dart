abstract class AuthenticationServices {
  Future<void> signUp({
    required String id,
    required String userName,
    required String email,
    required String address,
  });
}

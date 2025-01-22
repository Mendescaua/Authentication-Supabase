import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final _supabase = Supabase.instance.client;

  //Logar com email e senha
  Future<AuthResponse> signInWithEmailAndPassword(
      String email, String password) async {
    return await _supabase.auth
        .signInWithPassword(email: email, password: password);
  }

  //Registrar com email e senha
  Future<AuthResponse> signUpWithEmailAndPassword(
      String email, String password) async {
    return await _supabase.auth.signUp(email: email, password: password);
  }

  //Deslogar
  Future<void> signOut() async {
    await _supabase.auth.signOut();
  }

  //get user email
  String? getCurrentUserEmail() {
    final session = _supabase.auth.currentSession;
    final user = session?.user;
    return user?.email;
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthState {
  final String? role;
  final bool isAuthenticated;

  AuthState({this.role, this.isAuthenticated = false});
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(AuthState());

  void login(String role) {
    state = AuthState(role: role, isAuthenticated: true);
  }

  void logout() {
    state = AuthState();
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier();
});

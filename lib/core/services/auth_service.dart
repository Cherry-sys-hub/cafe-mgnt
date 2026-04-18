class AuthService {
  static const Map<String, Map<String, String>> _users = {
    'Admin': {'username': 'admin', 'password': '123'},
    'Reception': {'username': 'reception', 'password': '123'},
    'Kitchen': {'username': 'kitchen', 'password': '123'},
    'Waiter': {'username': 'waiter', 'password': '123'},
  };

  static bool login(String role, String username, String password) {
    final user = _users[role];
    if (user != null) {
      return user['username'] == username && user['password'] == password;
    }
    return false;
  }
}

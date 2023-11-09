class User {
  String username = 'dhinesh';
  String password = 'Dhinesh123';
}

mixin AuthMixin on User {
  bool isAuthenticated = false;

  void authenticate(String username, String password) {
    if (super.username == username && super.password == password) {
      isAuthenticated = true;
      print('Authentication success');
    } else {
      print('Authentication failed');
    }
  }

  void logout() {
    isAuthenticated = false;
    print('logged out');
  }
}

class SecureResource extends User with AuthMixin {
  void accessResource() {
    if (super.isAuthenticated) {
      print('Resource accessed');
    } else {
      print('Access denied');
    }
  }
}

void main() {
  SecureResource sr = SecureResource();
  sr.authenticate('dhinesh', 'Dhinesh123');
  sr.accessResource();
  sr.logout();
}

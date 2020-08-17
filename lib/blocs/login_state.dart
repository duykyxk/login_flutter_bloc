 class LoginState{
  final String email;
  final String password;
  final bool status;
  const LoginState({this.email = "", this.password = "", this.status = false});

  LoginState chaneValue(String email){
    return LoginState(email: email);
  }
  bool isEmailValue(String email){
      return email.length > 6 ? true : false;
  }
}


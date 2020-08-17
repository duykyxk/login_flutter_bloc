import 'package:flutter/material.dart';

abstract class LoginEvent{
  const LoginEvent();
}
class EmailChange extends LoginEvent{
  final String email;
  const EmailChange({@required this.email});
}

class PasswordChange extends LoginEvent {
  final String pass;
  const PasswordChange({@required this.pass});
}

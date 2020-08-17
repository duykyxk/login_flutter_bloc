import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_bloc/blocs/login_bloc.dart';
import 'package:login_bloc/blocs/login_event.dart';
import 'package:login_bloc/blocs/login_state.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state){ //"counter" is "new state"
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Two actions/events here:", style: TextStyle(fontSize: 25),),
                  Container(
                    child: TextFormField(
                          initialValue: state.email,
                      decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        labelText: "Email",
                          errorText: state.isEmailValue(state.email)? null : "Something wrong",
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        context.bloc<LoginBloc>().add(EmailChange(email: value));
                      },
                    ),
                    margin: EdgeInsets.all(10),
//                    decoration: BoxDecoration(color: Colors.),
                  ),
                  Text(""+state.email, style: TextStyle(fontSize: 40, color: Colors.blue),),
                  Container(
                    child: FlatButton(
                      child: Text("Decrement(-)",
                        style: TextStyle(fontSize: 16, color: Colors.black),),
                      onPressed: () {
                        context.bloc<LoginBloc>().add(PasswordChange(pass: "passssss"));
                      },
                    ),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Colors.redAccent),
                  ),

                ],
              );
            },)
      ),
    );
  }
}

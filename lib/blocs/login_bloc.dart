import 'package:bloc/bloc.dart';
import 'package:login_bloc/blocs/login_event.dart';
import 'package:login_bloc/blocs/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>{
  LoginBloc() : super( const LoginState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    print (state);
    if (event is EmailChange ){
        print ("email change");
        String email = event.email;
        yield state.chaneValue(email);
    }
     if(event is PasswordChange) {
       print ("password  change");
     }
    }

  }

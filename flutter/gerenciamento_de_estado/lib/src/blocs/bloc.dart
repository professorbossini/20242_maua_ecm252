import 'dart:async';
import 'package:rxdart/streams.dart';

import 'validators.dart';

class Bloc with Validators{
  final _emailController = StreamController <String>.broadcast();
  final _passwordController = StreamController <String>.broadcast ();

  Stream <String> get email => _emailController.stream.transform(validateEmail);

  Stream <String> get password => _passwordController.stream.transform(validatePassword);

  Stream<bool> get emailPasswordAreOk => CombineLatestStream.combine2(email, password, (e, p) => true);

  Function(String) get changeEmail => _emailController.sink.add;

  Function(String) get changePassword => _passwordController.sink.add;

  void dispose(){
    _emailController.close();
    _passwordController.close();  
  }
}
// final bloc = Bloc();



import 'dart:async';

import 'package:email_validator/email_validator.dart';

mixin Validators{
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      //se o e-mail for válido, adiciona o e-mail ao sink
      if(EmailValidator.validate(email)){
        sink.add(email);  
      }
      //caso contrário, adiciona um ERRO ao sink, indicando que o e-mail é inválido
      else{
        sink.addError('E-mail inválido');
      }
    }
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink){
      if(password.length > 3) {
        sink.add(password);
      } else {
        sink.addError('Senha inválida, digite pelo menos 4 caracteres');
      }
    }
  );  
}
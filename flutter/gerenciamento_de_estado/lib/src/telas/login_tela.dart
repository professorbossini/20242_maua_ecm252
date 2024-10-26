import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';
class LoginTela extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(bloc),
          passwordField(bloc),
          Container(
            margin: EdgeInsets.only(top: 12.0),
            child: Row(
              children: [
                Expanded(
                  child: submitButton(bloc),
                )
              ],
            ),
          )
        ],
      )
    );    
  }
  Widget emailField(Bloc bloc){
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, AsyncSnapshot <String> snapshot){
        //2 minutos: exiba a mensagem de errro de maneira condicional olhando para o snapshot
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'seu@email.com',
            labelText: 'Digite seu e-mail',
            // errorText: snapshot.hasError ? snapshot.error.toString() : null
            errorText: snapshot.error?.toString()
          ),
        );
      },
    );

  }
  Widget passwordField(Bloc bloc){
    //1 minuto
    return StreamBuilder(
      stream: bloc.password,
      builder:(context, AsyncSnapshot <String> snapshot){
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'senha',
            labelText: 'Digite sua senha',
            errorText: snapshot.error?.toString()
          ),
        );
      }
    );
  }

  Widget submitButton(Bloc bloc){
    return StreamBuilder(
      stream: bloc.emailPasswordAreOk,
      builder: (context, AsyncSnapshot <bool> snapshot){
        return ElevatedButton(
          onPressed: snapshot.hasData ? (){} : null, 
          child: Text('Login')
        );
      },    );
  }
}
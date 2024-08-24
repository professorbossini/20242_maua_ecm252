//importar a biblioteca para entrada/saída
import 'dart:io';
//importar a biblioteca para gerar valores aleatórios
import 'dart:math';
//definir um enum para representar as opções pedra, papel ... sair
enum Opcao {pedra, papel, tesoura, sair}

void exibir(String texto){
  stdout.writeln(texto);
}

int pegarOpcaoUsuario(){
  return int.parse(stdin.readLineSync()!);
}

bool opcaoEhValida(int opcao){
  return switch(opcao){
    >= 1 && <= 4 => true,
    _ => false
  };
}

Opcao mapearOpcao(int opcao){
  return Opcao.values[opcao - 1];
}

String decidirResultado(Opcao opUsuario, Opcao opComputador){
  if(opUsuario == opComputador) return "Empate";
  return (opUsuario.index - opComputador.index + 3) % 3 == 1 ? "Você venceu" : "Computador venceu";
  // if(opUsuario == Opcao.pedra){
  //   if(opComputador == Opcao.tesoura) return "Você venceu";
  //   return "Computador ganhou";
  // }
  // return switch(opUsuario){
  //   //Opcao.pedra => opComputador == Opcao.tesoura ? "Você venceu" : "Computador venceu"
  //   Opcao.pedra => "${opComputador == Opcao.tesoura ? "Você" : "Computador"} venceu",
  //   Opcao.papel => "${opComputador == Opcao.pedra ? "Você" : "Computador"} venceu",
  //   _ => "${opComputador == Opcao.papel ? "Você" : "Computador"} venceu"
  // };
  // return opUsuario == Opcao.papel ? 
  //   opComputador == Opcao.pedra ?
  //     "Você venceu"
  //   :
  //     "Computador venceu"
  // : 
  //   opComputador == Opcao.papel ?
  //     "Você venceu"
  //   :
  //     "Computador venceu"
  // ;
}

void jogo(){

  int opUsuario;
  //fazer o loop do jogo com do/while, ele termina quando o usuário digitar 4
  do{
    //no loop do/while interno, fazer
    //exibição do menu de opções
    //capturar a opção do usuário, usando esse do/while para validá-la
    do{
      exibir("1-Pedra\n2-Papel\n3-Tesoura\n4-Sair");
      opUsuario = pegarOpcaoUsuario();
    }while(!opcaoEhValida(opUsuario));
    if(opUsuario == 4)return;
    //sortear a opção do computador
    int opComputador = Random().nextInt(3) + 1;
   //mapear a opção do usuário, de int para enum
    final opcaoUsuario = mapearOpcao(opUsuario);
   //mapear a opção do computador, de int para enum
    final opcaoComputador = mapearOpcao(opComputador);
   //mostrar as opções no seguinte formato, com interpolação
   //JOGADOR(pedra) vs (tesoura)COMPUTADOR
    exibir("JOGADOR(${opcaoUsuario.name}) vs (${opcaoComputador.name})COMPUTADOR");
   //exibir quem ganhou ou se houve empate
   final resultado = decidirResultado(opcaoUsuario, opcaoComputador);
   exibir(resultado);
  }while(opUsuario != 4);

}
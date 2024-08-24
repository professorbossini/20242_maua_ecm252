import 'dart:io';
import 'dart:math';

// Variáveis globais
Random random = Random();
int chanceVitoria = 0;
int chanceDerrota = 0;
int chanceEmpate = 0;
int pontosJogador = 0;
int pontosComputador = 0;

// Definindo os enums para as opções do jogo
enum Opcao { pedra, papel, tesoura }

void main() {
  print('Quem você quer controlar?');
  print('1 - Jogador');
  print('2 - Computador');
  int alvoControle = int.parse(stdin.readLineSync()!);

  definirEstatisticas();

  // Invertendo as chances se o alvo de controle for o computador
  if (alvoControle == 2) {
    int temp = chanceVitoria;
    chanceVitoria = chanceDerrota;
    chanceDerrota = temp;
  }

  print('Quantas rodadas você quer jogar?');
  int totalRodadas = int.parse(stdin.readLineSync()!);

  for (int rodada = 1; rodada <= totalRodadas; rodada++) {
    print('Rodada $rodada de $totalRodadas');
    int escolha = obterEscolhaJogador();

    if (escolha == 3) {
      print('Saindo do jogo. Obrigado por jogar!');
      return;
    }

    if (escolha == 4) {
      definirEstatisticas();
      rodada--; // Não contar a rodada como válida ao alterar estatísticas
      continue;
    }

    if (escolha < 0 || escolha > 4) {
      print('Opção inválida! Tente novamente.');
      rodada--; // Não contar a rodada como válida
      continue;
    }

    Opcao opcaoJogador = Opcao.values[escolha];
    String resultado = determinarResultado();
    exibirResultado(resultado, opcaoJogador);
  }

  print('Pontuação final: Jogador $pontosJogador - Computador $pontosComputador');

  if (pontosJogador == pontosComputador) {
    modoPenaltis();
  }

  print('Resultado final após os pênaltis: Jogador $pontosJogador - Computador $pontosComputador');
  print(pontosJogador > pontosComputador ? 'Jogador é o vencedor final!' : 'Computador é o vencedor final!');
}

int obterEscolhaJogador() {
  print('Escolha uma opção:');
  print('0 - pedra, 1 - papel, 2 - tesoura, 3 - sair, 4 - alterar estatísticas');
  return int.parse(stdin.readLineSync()!);
}

void definirEstatisticas() {
  print('Defina a porcentagem de chance de vitória (0 a 100):');
  chanceVitoria = int.parse(stdin.readLineSync()!);

  print('Defina a porcentagem de chance de derrota (0 a 100):');
  chanceDerrota = int.parse(stdin.readLineSync()!);

  print('Defina a porcentagem de chance de empate (0 a 100):');
  chanceEmpate = int.parse(stdin.readLineSync()!);

  // Verificando se as chances somam até 100
  if (chanceVitoria + chanceDerrota + chanceEmpate != 100) {
    print('As probabilidades devem somar até 100. Por favor, defina novamente.');
    definirEstatisticas(); // Repetir a definição se a soma não for 100
  }
}

String determinarResultado() {
  int numeroAleatorio = random.nextInt(101);
  if (numeroAleatorio < chanceVitoria) {
    return 'vitoria';
  } else if (numeroAleatorio < chanceVitoria + chanceDerrota) {
    return 'derrota';
  } else {
    return 'empate';
  }
}

void exibirResultado(String resultado, Opcao opcaoJogador) {
  Map<String, Map<Opcao, Opcao>> resultados = {
    'vitoria': {
      Opcao.pedra: Opcao.tesoura,
      Opcao.papel: Opcao.pedra,
      Opcao.tesoura: Opcao.papel,
    },
    'derrota': {
      Opcao.pedra: Opcao.papel,
      Opcao.papel: Opcao.tesoura,
      Opcao.tesoura: Opcao.pedra,
    },
    'empate': {
      Opcao.pedra: Opcao.pedra,
      Opcao.papel: Opcao.papel,
      Opcao.tesoura: Opcao.tesoura,
    },
  };

  Opcao opcaoComputador = resultados[resultado]![opcaoJogador]!;
  print('Computador escolheu: ${opcaoComputador.name}');
  print('Resultado: ${resultado == 'vitoria' ? 'Jogador vence!' : resultado == 'derrota' ? 'Computador vence!' : 'Empate!'}');

  if (resultado == 'vitoria') {
    pontosJogador++;
  } else if (resultado == 'derrota') {
    pontosComputador++;
  }
}

void modoPenaltis() {
  while (pontosJogador == pontosComputador) {
    print('Empate! Entrando nos pênaltis...');
    int escolha = obterEscolhaJogador();

    if (escolha == 3) {
      print('Saindo do jogo. Obrigado por jogar!');
      return;
    }

    if (escolha == 4) {
      definirEstatisticas();
      continue; // Não contar a rodada como válida ao alterar estatísticas
    }

    if (escolha < 0 || escolha > 4) {
      print('Opção inválida! Tente novamente.');
      continue;
    }

    Opcao opcaoJogador = Opcao.values[escolha];
    String resultado = determinarResultado();
    exibirResultado(resultado, opcaoJogador);
  }
}


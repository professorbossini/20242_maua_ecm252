import 'package:colecoes/colecoes.dart' as colecoes;
import 'dart:io';
void main(List<String> arguments) {

  var l1 = ['bbb', 'cc'];
  var l2 = [
    'a',
    for(var s in l1) if (s.length >= 2) s
  ];


  //uma coleção de filmes
  // //cada filme tem titulo, genero e notas(coleção de tamanho arbitrário)
  // String? a = stdin.readLineSync();
  // var filmes = [
  //   {
  //     'titulo': 'Interestelar',
  //     'genero': 'Ficção',
  //     'notas': [null]
  //   }
  // ];
  // filmes[0]['notas'].add(a);

  // var pessoa = <String, dynamic> {
  //   'nome': 'Ana',
  //   'idade': 22
  // };

  //exibir a coleção de chaves

  //exibir a coleção de valores

  //exibir a coleção de pares chave/valor item a item
  // for (final entry in pessoa.entries){
  //   print(entry.key);
  //   print(entry.value);
  //   print(pessoa[entry.key]);
  // }


  // String nome = pessoa['nome'] as String;
  // print(nome.toUpperCase());

  // String idade = pessoa['idade'] as String;

  // print(idade.length);

  //mapas
  // var pessoa = {
  //   'nome': 'Ana',
  //   'idade': 22
  // };
  // print(pessoa['oi']);

  // var lembretes = {
  //   1: 'Fazer café'
  // };
  // pessoa['nome'] = 'Maria';
  // pessoa['altura'] = 1.8;
  // lembretes[1] = 

  // var portugues = {'Brasil', 'Portugal'};
  // var europeus = {'Alemanha', 'Espanha', 'Portugal'};
  // //somente usando union, intersection e difference
  // //encontre todos os países exceto aqueles que são europeus e que falam português (simultaneamente)
  // print();
  //conjuntos
  //união, intersecção, diferença
  // var A = {1, 2, 3, 4, 5, 6};
  // var B = {1, 3, 7};
  // print(A.union(B));
  // print(A.intersection(B));
  // print(A.difference(B));
  // print(B.difference(A));

  // var nomes = <(String, int, int)> {};
  // nomes.add(("a", 1, 1));
  //{1, 2} = {2, 1} = {1, 1, 1, 1, 1, 2}
  // var nomes = ([{"Ana", "Ana", "João", 1, []}, (1, 2)], (1, 2));
  // print(nomes.runtimeType);
  // print(nomes);
  // var a = (1);

  // print(a.runtimeType);

  // var tupla = (1, 'Ana', 18, true, 1);
  // print("Ana".runtimeType.runtimeType);
  // print(tupla.$1);
  // print(tupla.$4);
  // var nomes = [null, 1, ""];
  // Object o = null;
  // var lista = [null, [], [null], ['abc'], 'a'];
  // (lista[1] as List<String>).add("1");
  // String? nome;
  // var nomes = [null, 1, ""];
  // nomes.add(nome);
  // if (true){
  //  nome = stdin.readLineSync()!;
  // }
  // else{
  //  nome = stdin.readLineSync();
  // }
  // var nomes = ['Ana'];
  // nomes.add(nome);
  // const lista = [[1], [2]];
  // lista[0][0] = 10;
  // const lista = [1, 2];
  // lista[0] = 6;
  // // lista = [7];


  // List <int>.generate(60, (i) => i + 1).shuffle();

  //type annotation
  // var l2 = <String> [];
  // List <String> l1 = ['a'];
  // var numeros = [1, 1.1];
  // var nomes = ['Ana', 'Maria'];
  // print(nomes.first);
  // print(nomes.firstOrNull);

  //exercício
//   Exercício. Escreva um programa que faz a soma dos elementos recebidos como
// parâmetro pelo método main. Lembre-se de fazer conversões apropriadas. Execute o
// programa com
// dart run colecoes 1 2 3
//use a função reduce
// arguments.red

  // List <Object> itens = ['Ana', true, 2, 2.5];
  // print(itens[2] + itens[3]);
  // itens[0] = false;
  // var letras = ['A', 'B'];
  // print(letras[0]);
  // print(letras[1]);
  // print(letras[letras.length - 1]);
  // print(letras);
  // print(letras.runtimeType);
  //print(arguments);
}

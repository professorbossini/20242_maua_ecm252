void main(){
  //switch expression
  //um comando pode ser um statement ou um expression
  var mediaFinal = 10;
  final conceito = switch(mediaFinal){
    10 || 9 => "A",
    8 => "B",
    7 => "C",
    _ => "R"
  };
  
}
// void main(){
//   const nota = 10;
//   switch(nota){
//     case 10 || 9:
//       print('A');
//   }
//   switch(nota){
//     case 8:
//       print("B");
//     case 10:
//     case 9:
//       print('A');
//   }
//   // const lista = ["pessego"];
//   // lista.add('Maca');
//   //inferência de tipos: var, final e const
//   //var
//   // var nome = "João";
//   // nome = "João Branco";
//   // print(nome);
//   // final idade = 17;
//   // final altura;
//   // altura = 1.8;
//   // final maiusculas = nome.toUpperCase();

//   // const c1 = "abc";
//   // const c2 = "abc".toUpperCase();
//    // dynamic a = "abc";
//   // var b = a;
//   // print(b.runtimeType);
//   // b = 1;
//   // var nome = "João";//inferência de tipo (feito pelo compilador)
//   // print(nome.runtimeType);
//   // nome = 1;
//   // nome.falar();
//   // int a = 2;
//   // dynamic b = 2;
//   // print(a + b);
//   // dynamic c = "abc";
//   // print(c + a);
//   // int a = 2; //estático
//   // print(a.runtimeType);

//   // dynamic b = 2;
//   // print(b.runtimeType);
//   // b = "abc";
//   // print(b.runtimeType);
//   // b.falar();

// }
// // void main(){
// //   bool b = !!true;
// //   int a = 2;
// //   ++a; //pré incremento
// //   print(a); // 3
// //   a++; //pós incremento
// //   print(a); //4
// //   print(++a); //5
// //   print(a++); //5
// //   print(a);//6
// // }

// // // void main(){
// // //   double d = 2.5;

// // //   print(d.round());

// // //   print(d.ceil());

// // //   print(d.floor());
// // // }

// // // void main(List <String> args){
// // //   //de string para int
// // //   String idadeTextual = "25";
// // //   int idade = int.parse(idadeTextual);

// // //   //de string para double
// // //   String pesoTextual = "80.2";
// // //   double peso = double.parse(pesoTextual);

// // //   //de string para num
// // //   String alturaTextual = "18.";
// // //   num altura = num.parse(alturaTextual);
// // //   print(altura.runtimeType);
// // //   // String $ = "abc";
// // //   // print('${$}');
// // //   // String letra = 'x';
// // //   // String resultado = letra * 10;
// // //   // print(resultado);
// // //   // String nome = "João";
// // //   // String sobrenome = "Branco";
// // //   // print ("Me chamo " + nome + " " + sobrenome);
// // //   // int idade = 21;
// // //   // print ('Tenho ' + idade.toString() + ' anos');
// // //   // print('Tenho $idade anos');
// // //   // print('Terei ${idade + 1} anos no ano que vem');
// // //   // int a = 2;
// // //   // print(a.runtimeType);
// // //   // num n1 = 2;
// // //   // num n2 = 2.5;
// // //   // double d = 2;
// // //   // print(d);
// // //   // print(n1.runtimeType);
// // //   // print(n2.runtimeType);
// // //   // print(d.runtimeType);
// // //   // print(true.runtimeType);
// // //   // print('\n');
// // //   // print(r'C:\Users\aluno\Documents');
// // //   // double d = 2;
// // //   // int i = 2;
// // //   // double d1 = i;
// // //   // print('Hello, World');
// // //   /*
// // //     fewa
// // //     ffewa
// // //     fewa
// // //     fwea
// // //    */
// // // }
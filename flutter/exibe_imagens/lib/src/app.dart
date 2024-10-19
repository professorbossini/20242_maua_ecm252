import 'package:exibe_imagens/src/models/image_model.dart';
import 'package:exibe_imagens/src/widgets/image_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class App extends StatefulWidget{
  @override
  State<App> createState() {
    return AppState();
  }
}

class AppState extends State <App>{
  int numeroImagens = 0;
  List<ImageModel> imagens = [];

  void obterImagem() async{
    final url = Uri.https(
      'api.pexels.com',
      '/v1/search',
      {'query': 'cat', 'page': '${imagens.length + 1}', 'per_page': '1'}
    );
    final req = http.Request('get', url);
    req.headers.addAll({
      'Authorization': 'a91Qyfh2Ud1rdeOGKV8aTR5Aj9UmRvdma6EdyhC9EfKStoAyt7rmDuhV'
    });
    final result = await req.send();
    final response = await http.Response.fromStream(result);
    final decodedJSON = json.decode(response.body);
    final imagem = ImageModel.fromJSON(decodedJSON);
    // print(imagem);
    setState(() {
      numeroImagens++;
      imagens.add(imagem);
    });
    // req.send().then((result){
    //   http.Response.fromStream(result).then((response){
    //     final decodedJSON = json.decode(response.body);
    //     final imagem = ImageModel.fromJSON(decodedJSON);
    //     print(imagem);
    //   });  
    // });
  }  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Minhas imagens")
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            obterImagem();
            setState((){
              numeroImagens++;
            });
          },
          child: const Icon(Icons.add)
        ),
        body: ImageList(imagens),
      )
  );  
  }
}
void main(){
  //Olá, Ana!
  final t = new SaudacaoParaAlguem();
  t.dizerTudo();
}

mixin SaudacaoMixin{
  String dizerOla(){
    return 'Olá';
  }

  void seila(){
    print('oi');
  }
}

mixin NomeMixin{
  String dizerNome(){
    return 'Ana';
  }

  void seila(){
    print('tchau');
  }
}

class SaudacaoParaAlguem with NomeMixin, SaudacaoMixin{
  void dizerTudo(){
    print('${dizerOla()}, ${dizerNome()}!');
  }
}

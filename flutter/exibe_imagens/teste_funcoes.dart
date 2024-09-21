void main(){
  final f1 = (){
    print('f1');
  };
  f1();

  final f2 = (){
    print('f2');
    return 'f2';
  };
  print(f2());

  final f3 = () => print('f3');

  f3();

  final f4 = () => {
    'a': f2()
  };

  var seila = f4();
  print(seila['a']);

  final f5 = () => <int> {};
  print(f5().runtimeType);
}
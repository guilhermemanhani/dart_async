void main() {
  print('inicio do P1');
  processo2();
  processo3().then((msg) => print(msg));
  // concluido com varlor entre no then
  // concluido com erro entra no catcherro ou onerror
  // whencomplete sempre executa é o finaly do try catch
  processo4()
      .then((msg) => print(msg))
      .catchError((erro) => print('Erro ao executar'))
      .whenComplete(() => print('Finalizou com erro'));

  processo4().then((msg) => print(msg),
      onError: (error) => print('trando erro com o OnError do then'));
  print('fim do P1');
}

Future<String> processo4() {
  print('Inicio p4');
  return Future.delayed(Duration(seconds: 3), () => throw Exception());
}

Future<String> processo3() {
  print('Inicio P3');
  return Future.delayed(Duration(seconds: 4), () => 'Fim do processo P3');
}

Future<void> processo2() async {
  print('fim do P2');
  Future.delayed(Duration(seconds: 3), () {
    var i = 0;
    while (i < 5) {
      print(i);
      i++;
    }
    print('Fim do P2');
  });
}

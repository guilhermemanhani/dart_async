void main() async {
  var mensagem = processo1();
  print('Mensagem = $mensagem');

  try {
    print('inicio do main');
    var mensagem1 = await processo1();
    print(mensagem1);
    var mensagem2 = await processo2();
    print(mensagem2);
    await processo3();
    // print(mensagem3);

  } on Exception catch (err) {
    print('Erro na chamada do processo $err');
  }
}

Future<String> processo1() {
  print('Inicio P1');
  return Future.delayed(Duration(seconds: 1), () => 'Fim do processo P1');
}

Future<String> processo2() {
  print('Inicio P2');
  return Future.delayed(Duration(seconds: 1), () => 'Fim do processo P2');
}

Future<String> processo3() {
  print('Inicio P3');
  return Future.delayed(Duration(seconds: 1), () => throw Exception());
}

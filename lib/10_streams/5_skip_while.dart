void main() async {
  print('Inicio');
  final interval = Duration(seconds: 1);

  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5).skipWhile((element) {
    print('Numero que chegou na skipWhile $element');
    return element < 5;
  });

  await for (var i in stream) {
    print('O numero chegou no await for $i');
  }
  print('Fim');
}

int callback(int value) {
  print('O Valor é $value');
  return (value + 1) * 2;
}

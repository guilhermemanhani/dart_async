void main() async {
  print('Inicio');
  final interval = Duration(seconds: 1);

  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(10);

  stream.listen((event) => print('Listen value: $event'));

  print('Fim');
}

int callback(int value) {
  print('O Valor é $value');
  return (value + 1) * 2;
}

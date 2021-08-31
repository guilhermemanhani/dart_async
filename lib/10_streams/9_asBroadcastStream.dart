void main() async {
  print('Inicio');
  final interval = Duration(seconds: 1);

  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.asBroadcastStream().take(10);

  stream.listen((event) => print('Listen 1 value: $event'));
  stream.listen((event) => print('Listen 2 value: $event'));

  print('Fim');
}

int callback(int value) {
  print('O Valor é $value');
  return (value + 1) * 2;
}

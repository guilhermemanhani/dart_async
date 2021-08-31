import 'dart:async';

Future<void> main() async {
  print('Inicio Stream Controller');

  final streamController = StreamController<int>.broadcast();
  final inStream = streamController.sink;
  final outStream = streamController.stream;

  outStream
      .skip(1)
      .where((event) => event % 2 == 0)
      .map((event) => 'O valor par eviado é $event')
      .listen((strConvertida) {
    print('String recebida');
    print(strConvertida);
  });

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    print('Enviado número $numero');
    inStream.add(numero);
    // streamController.add(numero);
    // await Future.delayed(Duration(milliseconds: 500));
  }

  print('im stream Controller');
  await streamController.close();
}

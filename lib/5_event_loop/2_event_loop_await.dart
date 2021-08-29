import 'dart:async';

Future<void> main() async {
  print('Inicio do main');
  scheduleMicrotask(() => print('Microteask #1'));
  print(DateTime.now());
  await Future.delayed(Duration(seconds: 1), () {
    print(DateTime.now());
    print('Future #1 delayed');
  });
  Future(() {
    var i = 0;
    while (i < 20000) {
      i++;
    }
    print('Future #2');
  });
  Future.delayed(Duration(seconds: 1), () => print('Future #1 delayed'));
  scheduleMicrotask(() => print('Microteask #2'));
  Future.delayed(Duration(seconds: 1), () => print('Future #1 delayed'));
  print('Fim main');
}

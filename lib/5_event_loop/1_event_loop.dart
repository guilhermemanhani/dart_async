import 'dart:async';

void main() {
  print('Inicio do main');
  scheduleMicrotask(() => print('Microteask #1'));
  print(DateTime.now());
  Future.delayed(Duration(seconds: 1), () {
    print(DateTime.now());
    print('Future #1 delayed');
  });
  Future(() {
    var i = 0;
    while (i < 20000) {
      i++;
    }
  });
  Future.delayed(Duration(seconds: 1), () => print('Future #1 delayed'));
  Future.delayed(Duration(seconds: 1), () => print('Future #1 delayed'));
  scheduleMicrotask(() => print('Microteask #2'));
  print('Fim main');
}

/**
 * Event 
 * Future.delayed = iniciar
 * Future #2 
 * Future #3 
 */

/**
 * MicroTask
 * Main 
 * microtask #1 
 * microtask #2
 * 
 */
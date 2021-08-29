void main() {
  p2();
  print('Iniciou o processo');
  var i = 0;
  while (i < 5) {
    print(i);
    i++;
  }
  m2();
  print('Finalizou');
}

void m2() {
  print('funcao 2');
}

void p2() {
  Future.delayed(
      Duration(seconds: 2), () => print('Processo 2 sendo executado'));
}

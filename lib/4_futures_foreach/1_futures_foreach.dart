Future<void> main() async {
  var nomes = ['Guilherme', 'Amanda', 'Metallica'];

  print('Inicio');

  // await Future.forEach<String>(nomes, (nome) async {
  //   print(await saudacao(nome));
  // });

  // for (var nome in nomes) {
  //   print(await saudacao(nome));
  // }

  // dessa forma ele realmente executa em paralelo
  var nomesFuturo = nomes.map((nome) => saudacao(nome)).toList();
  var saudacoes = await Future.wait(nomesFuturo);
  print(saudacoes);
}

Future<String> saudacao(String nome) {
  print('Inicio $nome');
  return Future.delayed(Duration(seconds: 1), () {
    print('FIM $nome');
    return 'Olá $nome';
  });
}

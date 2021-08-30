import 'dart:io';

Future<void> main() async {
  var file = File('lib/9_files/files/file.txt');
  // leitura Sincrona
  var fileData = file.readAsStringSync();

  // leitura Assincrona
  // var fileData = await file.readAsString();

  // leitura linha sincrona
  // var fileLista = file.readAsLinesSync();

  // leitura linha assincrona
  // var fileLista = await file.readAsLines();

  var listaNomes = ['Guns', 'Metallica', 'Slipknot'];
  // var file1 = File('lib/9_files/files/file1.txt');
  // await file1.writeAsString('cademia do Flutter\n', mode: FileMode.append);
  // file1.writeAsStringSync('cademia do Flutter\n', mode: FileMode.append);

  // var writeFile = file.openWrite(mode: FileMode.append);

  // listaNomes.forEach((nome) => writeFile.write('$nome\n'));

  // print(fileLista[2]);
  print(fileData);
}

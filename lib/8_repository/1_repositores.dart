import 'package:dart_async/8_repository/repositories/cidade_repositories.dart';
import 'package:dart_async/8_repository/repositories/user_repositories.dart';

Future<void> main() async {
  var cidadeRepository = CidadeRepository();
  var userRepository = UserRepository();
  try {
    var cidade = await cidadeRepository.buscarCidade();
    print(cidade);

    var user = await userRepository.findAllUsers(1);
    if (user != null) {
      print(user.name);
    } else {
      print('Usuario nao encontrado');
    }
  } catch (e) {
    print('ERRO');
  }
}

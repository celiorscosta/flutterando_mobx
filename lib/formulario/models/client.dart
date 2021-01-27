import 'package:mobx/mobx.dart';

part 'client.g.dart';

class ClientController = _ClientControllerBase with _$ClientController;

abstract class _ClientControllerBase with Store {
  @observable
  String name;
  @action
  changeName(String newName) => name = newName;

  @observable
  String email;
  @action
  changeEmail(String newEmail) => email = newEmail;

  @observable
  String cpf;
  @action
  changeCpf(String newCPF) => cpf = newCPF;
}

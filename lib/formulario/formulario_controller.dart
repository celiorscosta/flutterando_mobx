import 'package:flutterando_mobx/formulario/models/client.dart';
import 'package:mobx/mobx.dart';
part 'formulario_controller.g.dart';

class FormularioController = _FormularioControllerBase
    with _$FormularioController;

abstract class _FormularioControllerBase with Store {
  var client = ClientController();

  @computed
  bool get isValid {
    return validateName() == null &&
        validateEmail() == null &&
        validateCpf() == null;
  }

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return 'Este campo é obrigatório.';
    } else if (client.name.length < 3)
      return 'Seu nome precisa ter mais de 3 caractere.';
    return null;
  }

  String validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return 'Este campo é obrigatório.';
    } else if (client.email.length < 3 || !client.email.contains('@'))
      return 'Este não é um email válido.';
    return null;
  }

  String validateCpf() {
    if (client.cpf == null || client.cpf.isEmpty) {
      return 'Este campo é obrigatório.';
    } else if (client.cpf.length < 11) return 'CPF com menos de 11 caracteres.';
    return null;
  }
}

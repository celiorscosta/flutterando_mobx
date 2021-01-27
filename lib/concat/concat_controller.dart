import 'package:mobx/mobx.dart';
part 'concat_controller.g.dart';

class ConcatController = ConcatControllerBase with _$ConcatController;

abstract class ConcatControllerBase with Store {
  @observable
  String nome = '';

  @observable
  String sobrenome = '';

  @computed
  String get nomeCompleto => "$nome $sobrenome";

  @action
  mudarNome(String novoNome) {
    nome = novoNome;
  }

  @action
  mudarSobreNome(String novoSobrenome) {
    sobrenome = novoSobrenome;
  }
}

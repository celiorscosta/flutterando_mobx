import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterando_mobx/formulario/body.dart';
import 'package:flutterando_mobx/formulario/formulario_controller.dart';
import 'package:provider/provider.dart';

class HomeFormulario extends StatefulWidget {
  @override
  _HomeFormularioState createState() => _HomeFormularioState();
}

class _HomeFormularioState extends State<HomeFormulario> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<FormularioController>(context);
    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_) {
            return Text(controller.isValid
                ? 'Formulário Validado'
                : 'Formulario não Validado');
          },
        ),
      ),
      body: BodyFormulario(),
    );
  }
}

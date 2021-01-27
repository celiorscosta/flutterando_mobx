import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'formulario_controller.dart';

class BodyFormulario extends StatelessWidget {
  _textField({String labelText, onChanged, String Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<FormularioController>(context);

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Observer(
            builder: (_) {
              return _textField(
                labelText: 'Nome',
                onChanged: controller.client.changeName,
                errorText: controller.validateName,
              );
            },
          ),
          SizedBox(height: 50),
          Observer(
            builder: (_) {
              return _textField(
                labelText: 'Email',
                onChanged: controller.client.changeEmail,
                errorText: controller.validateEmail,
              );
            },
          ),
          SizedBox(height: 50),
          Observer(
            builder: (_) {
              return _textField(
                labelText: 'CPF',
                onChanged: controller.client.changeCpf,
                errorText: controller.validateCpf,
              );
            },
          ),
          Observer(
            builder: (_) {
              return RaisedButton(
                onPressed: controller.isValid ? () {} : null,
                child: Text('Salvar'),
              );
            },
          ),
        ],
      ),
    );
  }
}

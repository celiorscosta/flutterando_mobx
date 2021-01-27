import 'package:flutter/material.dart';
import 'package:flutterando_mobx/formulario/formulario_controller.dart';
import 'package:provider/provider.dart';
import 'formulario/home_formulario.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FormularioController>(
          create: (_) => FormularioController(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: HomeFormulario(),
      ),
    );
  }
}

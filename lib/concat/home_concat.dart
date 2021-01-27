import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterando_mobx/concat/concat_controller.dart';

class HomeConcat extends StatelessWidget {
  final ConcatController controller = ConcatController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MobX"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Nome'),
                onChanged: controller.mudarNome,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(labelText: 'Sobrenome'),
                onChanged: controller.mudarSobreNome,
              ),
              SizedBox(height: 20),
              Observer(
                builder: (_) {
                  return Text('${controller.nomeCompleto}');
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

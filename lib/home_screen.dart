import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de flutter'),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.mode_fan_off),
            title: Text('Hola mundo', 
              style: Theme.of(context).textTheme.headlineLarge,
              ),
            subtitle: const Text('Adios mundo'),
            trailing: const  Icon(Icons.arrow_circle_right),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.flight),
            title: Text('Hola mundo',
              style: Theme.of(context).textTheme.headlineLarge,
              ),
            subtitle: Text('Adios mundo'),
            trailing: Icon(Icons.arrow_circle_right),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.ac_unit_sharp),
            title: Text('Hola mundo'),
            subtitle: Text('Adios mundo'),
            trailing: Icon(Icons.arrow_circle_right),
            )

          ],
        ),
      );
}
}
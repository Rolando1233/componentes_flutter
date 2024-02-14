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
          children: const [
            ListTile(
              leading: Icon(Icons.mode_fan_off),
            title: Text('Hola mundo',
              style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),),
            subtitle: Text('Adios mundo'),
            trailing: Icon(Icons.arrow_circle_right),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.flight),
            title: Text('Hola mundo',
              style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 25),),
            subtitle: Text('Adios mundo'),
            trailing: Icon(Icons.arrow_circle_right),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.ac_unit_sharp),
            title: Text('Hola mundo',
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
            subtitle: Text('Adios mundo'),
            trailing: Icon(Icons.arrow_circle_right),
            )

          ],
        ),
      );
}
}
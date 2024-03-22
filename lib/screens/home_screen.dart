import 'package:flutter/material.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:practica3/screens/images_screen.dart';

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
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon (Icons.input_outlined),
              ),
            title: Text('Entradas',
              style: Theme.of(context).textTheme.headlineLarge,
              ),
            subtitle:  Text('Diferentes widgets para entradas de flutter',
              style: Theme.of(context).textTheme.bodySmall),
            //trailing: const CircularProgressIndicator(
            //  value: 0.8,
            //  strokeWidth: 10.0,
            //  semanticsLabel: "Prueba",
            //  color: AppTheme.barColor,
            //  backgroundColor: AppTheme.iconColor,
            //),
            trailing: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon (Icons.arrow_circle_right), 
              ),
              onTap: (){
                final ruta1 = MaterialPageRoute(builder: (context){
                  return const Inputsscreen();
                });
                Navigator.push(context, ruta1);
              },
            ),
            const Divider(),
            ListTile(
              leading:  IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon (Icons.list_alt_rounded), 
                ),
            title: Text('ListView.builder',
              style: Theme.of(context).textTheme.headlineLarge,
              ),
            subtitle:  Text('Scroll Infinito',
              style: Theme.of(context).textTheme.bodySmall),
            trailing: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon (Icons.arrow_circle_right),
              ),
              onTap: (){
                final ruta2 = MaterialPageRoute(builder: (context){
                  return const InfiniteListScreen();
                });
                Navigator.push(context, ruta2);
              },
            ),
            const Divider(), 
            ListTile(
              leading: IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.notification_add),
                ),
            title: Text('Notificaciones',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            subtitle: Text('Creación de notificaciones',
              style: Theme.of(context).textTheme.bodySmall),
            trailing: IconTheme(
               data: AppTheme.lightTheme.iconTheme,
              child: const Icon (Icons.arrow_circle_right), 
              ),
              onTap: (){
                final ruta3 = MaterialPageRoute(builder: (context){
                  return const NotificationsScreen();
                });
                Navigator.push(context, ruta3);
              },
            ),
            const Divider(),
            ListTile(
              leading: IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.image), ),
              title: Text(
                'Imágenes',
                style: AppTheme.lightTheme.textTheme.headlineLarge,),
              subtitle: Text('Widget de manejo de imágenes',
              style: Theme.of(context).textTheme.bodySmall),
              trailing: IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon (Icons.arrow_circle_right), 
              ),
              onTap: (){
                final ruta4 = MaterialPageRoute(builder: (context){
                  return const ImagesScreen();
                });
                Navigator.push(context, ruta4);
              },
            )
          ],
        ),
      );
}
}
import 'package:flutter/material.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/screens/home_screen.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  int selectedIndex = 0;

  void openScreen(int index) {
    setState(() {
      MaterialPageRoute ruta = MaterialPageRoute(builder: (context) {
        switch (index) {
          case 0:
            return const HomeScreen();
          case 1:
            return const InfiniteListScreen();
          case 2:
            return const NotificationsScreen();
          case 3:
            return const Inputsscreen();
          default:
            return const HomeScreen(); // Por defecto, regresar a HomeScreen
        }
      });
      selectedIndex = index;
      Navigator.push(context, ruta);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imágenes', style: AppTheme.lightTheme.textTheme.headlineLarge),
      ),
      body: ListView(
        children: [
          imageCard(),
          imageweb(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: const Color.fromARGB(255, 16, 255, 255),
        unselectedItemColor: AppTheme.mainColor,
        onTap: (index) => openScreen(index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Color.fromARGB(221, 2, 0, 0)), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.data_object, color: Colors.black87), label: "List"),
          BottomNavigationBarItem(icon: Icon(Icons.notification_add_outlined, color: Colors.black87), label: "Noti"),
          BottomNavigationBarItem(icon: Icon(Icons.input, color: Colors.black87), label: "Imgs"),
          BottomNavigationBarItem(icon: Icon(Icons.exit_to_app, color: Colors.black87), label: "Salida")
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.headlineSmall,
      ),
    );
  }

  Card imageCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(20),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/imgs/logo.png'),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child:  Text(
                'Utt', style: AppTheme.lightTheme.textTheme.headlineLarge),
            )
          ],
        ),
      ),
    );
  }

  Widget imageweb() {
    return Center(
      child: Image.network('https://st.depositphotos.com/1016440/2534/i/450/depositphotos_25344733-stock-photo-sunrise-at-the-beach.jpg'),
    );
  }
}

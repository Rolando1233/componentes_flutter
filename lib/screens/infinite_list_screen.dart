import 'package:flutter/material.dart';
import 'package:practica3/screens/firebase_services.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';


class InfiniteListScreen extends StatefulWidget {
  const InfiniteListScreen({super.key});

  @override
  State<InfiniteListScreen> createState() => _InfiniteListScreenState();
}

class _InfiniteListScreenState extends State<InfiniteListScreen> {
  bool valueSwitch = false;
  double valueSlider = 0.0;
  int selectedIndex = 0;
  int selectedRadioOption = 0; //para los Radios Botton
  bool selectedCheckBoxOption1 = false;
  bool selectedCheckBoxOption2 = false;
  bool selectedCheckBoxOption3 = false;
  List screens =const [
    HomeScreen(),
    InfiniteListScreen(),
    NotificationsScreen(),
    ImagesScreen(),
  ];

  openScreen(int index){
    setState(() {
      MaterialPageRoute ruta= MaterialPageRoute(builder: (context)=> const HomeScreen());
      switch(index){
        case 0:ruta = MaterialPageRoute(builder: (context)=> const HomeScreen());
          break;
        case 1:ruta =MaterialPageRoute(builder: (context)=> const Inputsscreen());
          break;
        case 2:ruta = MaterialPageRoute(builder: (context)=> const NotificationsScreen());
          break;
        case 3:ruta =MaterialPageRoute(builder: (context)=> const ImagesScreen());
          break;
    }
      selectedIndex = index;
      Navigator.push(
        context, 
        ruta
        );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista infinita',style: AppTheme.lightTheme.textTheme.headlineLarge,),
      ),
        body: FutureBuilder(
          future: getMascotas(),
          builder: ((context, snapshot){
              if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Text(
                      snapshot.data?[index]['nombre'],
                      style: AppTheme.lightTheme.textTheme.headlineMedium,
                    ),
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

          }) 
        ),



      bottomNavigationBar: BottomNavigationBar(
        currentIndex : selectedIndex,
        backgroundColor: const Color.fromARGB(255, 16, 255, 255),
        unselectedItemColor: AppTheme.mainColor,
        onTap: (index) => openScreen(index),
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Color.fromARGB(221, 2, 0, 0),), label: "Inicio",),
          BottomNavigationBarItem(icon: Icon(Icons.input, color: Colors.black87,), label: "Entra"),
          BottomNavigationBarItem(icon: Icon(Icons.notification_add_outlined, color: Colors.black87,), label: "Noti"),
          BottomNavigationBarItem(icon: Icon(Icons.image_search_outlined, color: Colors.black87,), label: "Imgs"),
          BottomNavigationBarItem(icon: Icon(Icons.exit_to_app, color: Colors.black87,), label: "Salida",)
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.headlineSmall,
      ),
    );
  }
}

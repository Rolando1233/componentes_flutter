import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool valueSwitch = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  double valueSlider = 0.0;
  int selectedIndex = 0;
  int selectedRadioOption = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Entradas')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              entradaTexto(),
              entradaSwitch(),
              entradaSlider(),
              entradasRadio(),
              Text(
                '¿Qué usas para correr tus apps de flutter?',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              entradasCheck(),
              const ElevatedButton(
                onPressed: null, 
                child: Text(
                  'Guardar',
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: AppTheme.mainColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, 
            color: AppTheme.barColor,),
            label: "Inicio"),
          BottomNavigationBarItem(
            icon: Icon(Icons.list,color: AppTheme.barColor,),
            label: "Datos",),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app,color: AppTheme.barColor,),
            label: "Salir")
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyMedium,
        ),
    );
  }

  TextField entradaTexto() {
    return TextField(
            style: AppTheme.lightTheme.textTheme.headlineMedium,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              labelText: 'Escribe tu nombre: ',
              labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
          );
  }

  Row entradaSwitch(){
    return Row(
      children: <Widget>[
      const FlutterLogo(),
      Text( '¿Te gusta flutter?',
        style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        const SizedBox(
          width: 25.0
          ),
        Switch(
          value: valueSwitch,
          onChanged: (value){
            setState(() {
            valueSwitch = value;
            print('Estado del switch: $valueSwitch');
            });
          }
        ),
      ],
    );
  }

  Column entradaSlider(){
    return Column(
      children: [
        Text(
          '¿Qué tanto te gusta flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
          min: 0,
          max: 10,
          value: valueSlider,
          divisions: 10,
          activeColor: AppTheme.accentColor,
          inactiveColor: AppTheme.mainColor,
          thumbColor: const Color.fromARGB(255, 46, 47, 102),
          label: '${valueSlider.round()}',
          onChanged: (value){
            setState(() {
              valueSlider = value;
              print('Valor del slider: $valueSlider');
            });
          }
        ),
      ],
    );
  }
  Column entradasRadio(){
    return Column(
      children: [
          Text(
            '¿Qué prefieres usar para desarrollo movil?',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            ListTile(
              title: Text(
                'Kotlin',
                style: AppTheme.lightTheme.textTheme.headlineMedium,
              ),
              leading: Transform.scale(
                scale: 1.5,
                child: Radio(
                  value: 1,
                  groupValue: selectedRadioOption,
                  onChanged: (value) {
                    setState(() {
                      selectedRadioOption = value!;
                      print('Opcion seleccionada: $selectedRadioOption');
                    });
                  }
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Flutter',
                style: AppTheme.lightTheme.textTheme.headlineMedium,
              ),
              leading: Transform.scale(
                scale: 1.5,
                child: Radio(
                  value: 2,
                  groupValue: selectedRadioOption,
                  onChanged: (value) {
                    setState(() {
                      selectedRadioOption = value!;
                      print('Opcion seleccionada: $selectedRadioOption');
                    });
                  }
                ),
              ),
            ),
        ],
    );
  }
  Row entradasCheck(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Navegador',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
          value: isChecked1,
          onChanged: (value){
            setState(() {
              isChecked1 = value!;
              print('Valor de Navegador $isChecked1');
            });
          }
        ),
        Text(
          'Emulador',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
          value: isChecked2,
          onChanged: (value){
            setState(() {
              isChecked2 = value!;
              print('Valor de Emulador $isChecked2');
            });
          }
        ),
        Text(
          'Smarthphone',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
          value: isChecked3,
          onChanged: (value){
            setState(() {
              isChecked3 = value!;
              print('Valor de Smarthphone $isChecked3');
            });
          }
        ),
      ],
    );
  }
}
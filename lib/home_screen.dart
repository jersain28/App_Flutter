import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  TextEditingController counterTxt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    counterTxt.text = counter.toString();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Practica 2'),
          elevation: 10,
          backgroundColor: const Color.fromARGB(255, 119, 245, 110),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [
              separador(15.5),
              titulo(),
              separador(35.5),
              creditos(),
              separador(60.0),
              contador(),
         ],
       ),
     ),
     floatingActionButton:  botones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
   );
  }

  Row botones() {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: <Widget> [
       FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 33, 243, 156),
        onPressed: () {
          counter--;
          counterTxt.text = counter.toString();
          // print('Se presiono el boton -');
          // print(counter);
        },
        child: const Icon(Icons.exposure_minus_1),
        ),
       FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 226, 243, 33),
        onPressed: () {
          counter = 0;
          counterTxt.text = counter.toString();
          // print('Se presiono el boton reinicio');
          // print(counter);
        },
        child: const Icon(Icons.exposure_zero),
        ),
       FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 243, 33, 47),
        onPressed: () {
          counter++;
          counterTxt.text = counter.toString();
          // print('Se presiono el boton +');
          // print(counter);
        },
        child: const Icon(Icons.exposure_plus_1),
        ),
     ],
   );
  }

  SizedBox separador(double alto) {
    return SizedBox(
              height: alto,
            );
  }

  Row creditos() {
    return const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
            Text('Desarrollador de Apps Moviles',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            Text('Jersain',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 254, 10, 30),
              fontSize: 50.0,
            ),
           ),
          ],
         );
  }

  Text titulo() {
    return const Text(
            'Contador de taps',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25.5,
              fontWeight: FontWeight.bold,
            ),
          );
  }

  Widget contador(){
   return  SizedBox(
    width: 150,
     child: TextField(
      controller: counterTxt,
      enabled: false,
      keyboardType: TextInputType.number,
      maxLength: 6,
      style: const TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 31, 118, 158)
      ),
      cursorColor: Colors.blue,
      cursorRadius: const Radius.elliptical(10.0, 15.0),
      cursorWidth: 5.0,
      //obscureText: true,
      //maxLines: 3 ,
      decoration: const InputDecoration(
        //icon: CircularProgressIndicator(),
        icon: Icon(Icons.punch_clock),
        prefixIconColor: Color.fromARGB(255, 72, 255, 59),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Color.fromARGB(255, 91, 176, 219)),
        ),
      ), 
     ),
   ); 
  }
}

import 'package:flutter/material.dart';
class igra extends StatefulWidget {
  const igra({Key? key}) : super(key: key);

  @override
  _igraState createState() => _igraState();
}

class _igraState extends State<igra> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepOrange),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Начальный Уровень'),
          centerTitle: false,
          actions: [
            // IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            IconButton(onPressed: () {}, icon: Icon(Icons.home_filled)),
          ],),

        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/asd228133.jpg'),
                fit:BoxFit.fill,
              )
          ),
        ),
      ),);
  }
}



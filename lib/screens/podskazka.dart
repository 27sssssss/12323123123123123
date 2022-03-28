import 'package:flutter/material.dart';
import 'screen1.dart';
class podskazka extends StatefulWidget {
  const podskazka({Key? key}) : super(key: key);

  @override
  _podskazkaState createState() => _podskazkaState();
}

class _podskazkaState extends State<podskazka> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepOrange),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Подсказка'),
          centerTitle: false,
          actions: [
            // IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>screen1()));}, icon: Icon(Icons.home_filled)),
          ],),

        body: Container (
          decoration: const BoxDecoration(
            image:DecorationImage(
              image: AssetImage("assets/qwe.jpg"),
              fit:BoxFit.fill,
            ),),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                  padding:EdgeInsets.symmetric(horizontal: 75.0),
                  child: Text(" В формах именительного падежа множественного числа ударение падает на окончание -а окончание -ы является безударным.\n В формах родительного падежа множественного числа окончание -ов чаще всего является безударным, а окончание -ей – ударным. \n В существительных иностранного происхождения ударение, как правило, падает на последний слог. \n Часто в производных словах сохраняется ударение от производящих слов.\n\n",
                    style: TextStyle(
                      color: Colors.black,
                    ),)
              ),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 75.0),
                child: Text(' Ударение в кратких формах прилагательных и страдательных причастий всегда падает на основу. Но в форме единственного числа женского рода оно переносится на окончание. \n\n У многих глаголов прошедшего времени женского рода ударным является окончание.',
                  style: TextStyle(
                    color: Colors.black,
                  ),),
              ),
              Padding(
                padding:EdgeInsets.fromLTRB(170.0,0.0,75.0, 0.0),
                child: Text(' В глаголах, образованных от прилагательных, обычно ударение падает на окончание.',
                  style: TextStyle(
                    color: Colors.black,
                  ),),
              ),
            ],
          ),
        ),
    ),);
  }
}

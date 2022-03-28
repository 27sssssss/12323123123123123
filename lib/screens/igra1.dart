import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import '../main.dart';
import 'podskazka.dart';
import 'prodvfinal.dart';
import 'screen1.dart';

var a=['аэропортЫ', 'бантЫ', 'бОроду', 'бухгалтерОв', 'вероисповЕдание', 'грАжданство', 'дЕфис', 'диспансЕр', 'договорЁнность', 'докумЕнт', 'дОсуг', 'жАлюзи', 'знАчимость', 'катАлог', 'диалОг', 'мОнолог', 'некрОлог', 'квартАл', 'кОрысть', 'крАны', 'лЕкторы', 'лЕкторов', 'местностЕй', 'почестЕй', 'челюстЕй', 'новостЕй', 'намЕрение', 'нЕдуг', 'новостИ', 'новостЕй', 'местностЕй', 'ногОть', 'нОгтя', 'отрОчество', 'пОртфель', 'пОручни', 'свеклА', 'сИроты', 'срЕдства', 'сОзыв', 'тамОжня','тОрты', 'тортОв', 'цЕпочка', 'шарфЫ', 'бантЫ', 'шОфер', 'киОскер', 'контрОлер', 'экспЕрт'];
var b=['аэропОрты', 'бАнты', 'бородУ', 'бухгАлтеров', 'вероисповедАние', 'граждАнство', 'дефИс', 'диспАнсер', 'договОренность', 'докУмент', 'досУг', 'жалюзИ', 'значИмость', 'каталОг', 'диАлог', 'монолОг', 'некролОг', 'квАртал', 'корЫсть', 'кранЫ', 'лекторЫ', 'лекторОв', 'мЕстностей', 'пОчестей', 'чЕлюстей', 'нОвостей', 'намерЕние', 'недУг', 'нОвости', 'нОвостей', 'мЕстностей', 'нОготь', 'ногтЯ', 'Отрочество', 'портфЕль', 'поручнИ', 'свЁкла', 'сирОты', 'средствА', 'созЫв', 'таможнЯ','тортЫ', 'тОртов', 'цепОчка', 'шАрфы', 'бАнты', 'шофЁр', 'киоскЁр', 'контролЁр', 'Эксперт'];
var r=Random(23);

int val1=-1;
int val2=-1;
bool value=false;
bool val=false;
int rnd=0;
Set <int> av={2,4,7,8,9,12,14,17,19,20,21,25,26,29,32,35,38,40,41,49};
Set <int> bv={0,1,3,5,6,10,11,13,15,16,18,22,23,24,27,28,30,31,33,34,36,37,39,42,43,44,45,46,47,48};
Random random = new Random();
int randomNumber = random.nextInt(23);

class igra1 extends StatefulWidget {
  const igra1({Key? key}) : super(key: key);

  @override
  _igra1State createState() => _igra1State();
}

class _igra1State extends State<igra1> {
  @override
  void initState() {
    countv = 0;
    counto = 0;
    Timer(Duration(seconds: 3), () {Navigator.push(context, MaterialPageRoute(builder: (context) =>Final()));}
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    int randomNumber=random.nextInt(23);
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepOrange),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Начальный Уровень'),
          centerTitle: false,
          actions: [
            // IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>screen1()));}, icon: Icon(Icons.home_filled)),
          ],),

        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/asd228133.jpg'),
                fit: BoxFit.fill,
              ),),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 60.0),
                child :RadioListTile(
                  title: Text(a[randomNumber],style:const TextStyle(fontSize:22.0,color: Colors.black,),),
                  value: 1,
                  groupValue: val1,
                  onChanged: (value) {
                    setState(() {
                      val1 = 1;
                      if ((av.contains(randomNumber))){countv++;}
                      else {counto++;};
                      val1=-1;
                    });
                    },
                    activeColor:Colors.black,),
              ),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 60.0),
                child :RadioListTile(
                    title: Text(b[randomNumber],style:const TextStyle(fontSize:22.0,color: Colors.black,),),
                      value: 2,
                      groupValue: val1,
                      onChanged: (value) {
                        setState(() {
                          val1 = 2;
                          if ((bv.contains(randomNumber))){countv++;}
                          else {countv++;};
                          val1=-1;
                        });
                      },
                      activeColor:Colors.black,),
                    ),
              SizedBox(height: 50,),
              Padding(padding:EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 20.0),
                child: Text("Верные ответы: $countv",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontStyle: FontStyle.italic,
                  ),),),
              Padding(padding:EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 20.0),
                child: Text("Ошибки: $counto",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontStyle: FontStyle.italic,
                  ),),),
                  ],
                  ),
                  ),
        )
        );
  }
}

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'screen1.dart';
var a=['августовский ','акрополь ','алкоголь ','амфора ','аналог ','апокалипсис ','апостроф ','аристократия ','асимметрия ','афера ','аэропорты ','банты ','балованный ','балуясь ','баловать ','бармен ','бочковый ','бухгалтеров ','бытие ','бюрократия ','вероисповедание ','взаперти ','включён ','включённый ','включим ','включит ','включишь ','вогнутый ','водопровод ','возрастов ','ворвалась ','восприняла ','воссоздала ','вручена ','вручит ','втридорога ','выздоровеешь ','генезис ','гербовый ','гербы ','газопровод ','гастрономия ','глашатай ','гнала ','гомеопатия ','граффити ','доверху ','догма ','донизу ','досуха ','досыта ','давнишний ','о деньгах ','дешевизна ','диспансер ','добела ','договор ','договоров ','дозировать ','дозвонится ','дозвонятся ','докрасна ','домен ','донельзя ','дразнит ','дремота ','духовник ','евангелие ','еретик ','жалюзи ','ждало ','житие ','загнутый ','загодя ','занял ','заняло ','занятый ','засветло ','затемно ','завидно ','закупорить ','заняла ','занята ','занятой (постоянный признак) ','занятый (временный признак) ','заперта ','засорённый ','звоним ','звонит ','звонишь ','зубчатый ','иконопись ','иксы ','искоса ','искра ','избалованный ','избаловать ','инспекторы ','инструкторы ','исключит ','исповедание ','иссушённый ','исчерпать ','кашлянуть ','кухонный ','каталог ','квартал ','килограммов ','кладовая ','клала ','коклюш ','краны ','красивее ','красивейший ','кремень ','кремы ','кровоточащий ','кровоточить ','кружева ','лекторов ','логин ','ломоть ','мастерски ','мельком ','местностей ','мозаичный ','мусоропровод ','наделит ','назвалась ','налита ','намерение ','нанявшийся ','насорит ','начав ','начавший ','начавшись','начать ','начал ','начала ','начатый ','некролог ','несказанно', 'нефтепровод ','низина ','новоприбывший ','новорождённый ','ногтя, род.п ед.ч. ','обеспечение ','обетованный ','обзвонит ','облегчит ','облегчить ','ободрить ','одолжит ','озлобить ','озлобленный ','ознакомленный ','окон ','окружит ','опошлить ','опошлят ','оптовый ','осведомить ','осведомиться ','остриё ','осуждена ','откупорил ','откупорить ','отключённый ','партер ','перезвонит ','пережитое ','плесневеть ','плодоносить ','пломбировать ','повторённый ','повторит ','поделённый ','подростковый ','поняв ','послала ','прибыл ','принял ','приручённый ','премировать ','прибыв ','приданое ','принудить ','прозорлива ','противень ','пуловер ','ракушка ','развитая промышленность ','развитая деятельность ','развитая (раскрученная) ','реквием ','ретироваться ','рефлексия ','ржаветь ','сетчатый ','согнутый ','создало ','свёкла ','сверлит ','сверлишь ','слесари ','сливовый ','снята ','создал ','создана ','сорит ','сосредоточение ','средства ','средствами ','по средам ','столяр ','страховщик ','тексты ','тортов ','торты ','тотчас ','туфля ','танцовщица ','толика ','трансфер ','тренеры ','трубчатый ','трубопровод ','убыстрить ','уведомить ','углубить ','украинский ','укрепит ','умерший ','упрочение ','усугубить ','феномен ','фетиш ','филантропия ','флюорография ','ханжество ','ходатай ','ходатайство ','хозяева ','христианен ','цедра ','цепочка ','челюстей ','черпать ','чистильщик ','шарфы ','шасси ','шофёр ','нет шрифта ','шрифты ','щавель ','щемит ','щёголь ','щегол ','экскурс ','электропровод ','яслей '];
var r=Random(3);
String wor = '';
int val1=-1;
int val2=-1;
bool value=false;
bool val=false;

int rnd = 0;
Set <int> a1={0,3,11,15,16,27,29,35,36,37,38,46,47,48,49,50,64,70,72,73,74,75,76,77,78,84,91,92,93,94,103,104,109,111,115,119,123,124,137,139,146,157,181,182,189,193,195,198,199,200,201,202,205,206,212,213,217,218,219,220,221,225,226,229,240,245,247,248,249,250,253,257,259,261};
Set <int> a2={1,4,9,12,13,17,22,23,24,25,26,34,39,42,43,45,51,52,58,62,63,65,67,79,80,87,88,89,90,97,98,102,106,110,112,113,114,120,121,130,131,133,134,135,136,143,154,155,159,160,161,162,163,166,167,169,172,178,179,180,185,186,187,190,191,194,197,203,204,207,208,210,214,215,216,222,223,224,233,234,236,237,241,242,243,246,251,252,254,255,256,258};
Set <int> a3={2,5,6,14,18,19,21,30,33,41,53,54,55,56,57,59,60,61,66,68,69,71,81,82,83,85,86,95,99,100,101,105,107,108,118,122,125,127,128,129,132,138,140,141,147,149,150,151,152,153,156,158,164,168,175,176,177,183,188,192,209,228,230,231,232,238};
Set <int> a4={28,7,8,10,31,32,40,44,96,116,117,142,144,145,148,165,170,171,173,174,184,196,211,227,235,239,244,260};
Set <int> a5={20,126};
Set <int> a6={};
Random random = new Random();
int randomNumber =random.nextInt(262);
class Prodv extends StatefulWidget {
  const Prodv({Key? key}) : super(key: key);

  @override
  _ProdvState createState() => _ProdvState();
}

class _ProdvState extends State<Prodv> {
  @override
  void initState(){
    countv=0;
    counto=0;
    super.initState();
  }
  Widget build(BuildContext context) {
    int randomNumber=random.nextInt(262);
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.deepOrange),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Продвинутый уровень'),
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
                Text('Укажите номер ударной гласной в слове',style: TextStyle(
                  fontSize:20.0,
                  color: Colors.black,
                  fontStyle: FontStyle.normal
                ),),
                SizedBox(height: 50,),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 60.0),
                  child :Text(a[randomNumber],style:const TextStyle(fontSize:30.0,color: Colors.blue,),
                ),),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Expanded(flex:3,child: Text('')),
                    Expanded(flex:3,child:
                    TextButton (
                      child: Text('1', style:TextStyle(
                        fontSize: 25.0,
                        fontStyle: FontStyle.normal
                      ),),
                      onPressed: () {
                        setState(() {
                          if (a1.contains(randomNumber)) {
                            countv++;
                          } else {};
                        }
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black38),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
          ),
                    ),
                Expanded(flex:1,child: Text('')),
                Expanded(flex:3,child:
                TextButton (
                child: Text('2', style:TextStyle(
                  fontSize: 25.0,
                  fontStyle: FontStyle.normal
              ),),
              onPressed: () {
                setState(() {
                  if (a1.contains(randomNumber)) {
                    countv++;
                  } else {};
                }
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black38),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
            ),
            ),
            Expanded(flex:1,child: Text('')),
            Expanded(flex:3,child:
            TextButton (
              child: Text('3', style:TextStyle(
                  fontSize: 25.0,
                  fontStyle: FontStyle.normal
              ),),
              onPressed: () {
                setState(() {
                  if (a1.contains(randomNumber)) {
                    countv++;
                  } else {};
                }
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black38),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
            ),),
              Expanded(flex:3, child:Text('')),
                ],
                ),
              SizedBox(height: 50,),
            Row(
              children: [
                Expanded(flex:3,child: Text('')),
                Expanded(flex:3,child:
                TextButton (
                  child: Text('4', style:TextStyle(
                      fontSize: 25.0,
                      fontStyle: FontStyle.normal
                  ),),
                  onPressed: () {
                    setState(() {
                      if (a1.contains(randomNumber)) {
                        countv++;
                      } else {};
                    }
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black38),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                ),
                ),
                Expanded(flex:1,child: Text('')),
                Expanded(flex:3,child:
                TextButton (
                  child: Text('5', style:TextStyle(
                      fontSize: 25.0,
                      fontStyle: FontStyle.normal
                  ),),
                  onPressed: () {
                    setState(() {
                      if (a1.contains(randomNumber)) {
                        countv++;
                      } else {};
                    }
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black38),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                ),
                ),
                Expanded(flex:1,child: Text('')),
                Expanded(flex:3,child:
                TextButton (
                  child: Text('6', style:TextStyle(
                      fontSize: 25.0,
                      fontStyle: FontStyle.normal
                  ),),
                  onPressed: () {
                    setState(() {
                      if (a1.contains(randomNumber)) {
                        countv++;
                      } else {};
                    }
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black38),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                ),),
                Expanded(flex:3, child:Text('')),
              ],
            ),
            SizedBox(height: 30,),
            Padding(padding: EdgeInsets.fromLTRB(100, 0, 100, 20),
              child: Text('Верные ответы: $countv',
                style: TextStyle(
    fontSize: 16,
    color:Colors.black,
    fontStyle: FontStyle.normal
          ),
          ),
        ),
    ],),),),);
  }
}



























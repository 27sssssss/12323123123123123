import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:shared_preferences/shared_preferences.dart';
import 'screen1.dart';

import 'package:untitled/main.dart';
String str1 = '';
String str = '';
int count = 0;
String s='';
int c=0;

class Final extends StatefulWidget {
  const Final({Key? key}) : super(key: key);

  @override
  _FinalState createState() => _FinalState();
}

class _FinalState extends State<Final> {
  void _WriteToFile(s)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(()
        {
          if (countv>=count){prefs.setString('key',s);}},);
        }
  void _Writetofile1(c)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (c>count){
      prefs.setInt('key1',c);
    }
  }
  void _Start1() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      str1=prefs.getString('key') ?? 'нет';
      count=prefs.getInt('key1') ?? 0;},);
  }
  @override
  Widget build(BuildContext context) {
    const borderStyle=OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(
        color:Color(0xFFf0f0f0),width:2
      )
    );
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: Text('Ваш результат'),
        actions: [
          IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>screen1()));},icon: Icon(Icons.home_filled))
        ],),
      body:
          Container(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal:70),
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    filled:true,
                    fillColor: Colors.black12,
                    enabledBorder: borderStyle,
                    focusedBorder:borderStyle,
                    labelText: 'Введите ваше имя',
                  ),
                  onChanged: (str){
                    _Start1();
                    _WriteToFile(str);
                    _Writetofile1(countv);
                  },
                ),),
                SizedBox(height: 40,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 85),
                child:Text('Верных ответов:$countv',
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                ),),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 85),
                    child:Text('Ошибок:$counto',
                        style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                        ))
                ),
                SizedBox(height: 40,),
                TextButton(
                  child:const Text('Посмотреть лучший результат',
                  style:TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontStyle: FontStyle.italic)
                  ),
                onPressed: ()async{
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    setState(() {
                    s = prefs.getString('key') ?? 'нет';
                    c = prefs.getInt('key1') ?? 0;
                    },
                    );
                },),
                SizedBox(height: 10,),
                Text(s,
                    style: const TextStyle(color: Colors.blue,
  fontSize: 20,
  fontStyle: FontStyle.italic

      ),),
  Text("$c",
  style:const TextStyle(color: Colors.blue,
  fontSize: 20,
  fontStyle: FontStyle.italic))
              ]
  )
            )
          )
          
      
      );
  }
}

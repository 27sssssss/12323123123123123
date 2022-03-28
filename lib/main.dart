import 'package:flutter/material.dart';
import 'package:untitled/screens/igra1.dart';
import 'package:untitled/screens/podskazka.dart';
import 'package:untitled/screens/screen1.dart';
import 'package:untitled/screens/igra.dart';
import 'package:untitled/screens/prodv.dart';
import 'package:untitled/screens/prodvfinal.dart';
int countv=0;
int counto=0;
void main() => runApp(MaterialApp(initialRoute: '/',
  routes: {
    '/':(BuildContext context) => screen1(),
    '/second':(BuildContext context) => igra1(),
    '/prodv':(BuildContext context)=>Prodv(),
    '/podsk':(BuildContext context)=>podskazka(),
  },),
);



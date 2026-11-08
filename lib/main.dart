import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){ runApp(PravibeApp()); }

class PravibeApp extends StatelessWidget{
  @override Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}

// ... [Baki ka full code maine pehle wale message me diya hai - wahi paste karna hai] ...

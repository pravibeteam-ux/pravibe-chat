import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const String OWNER_CODE = "18273";
const String YOUR_WHATSAPP = "917077000000"; // yaha apna number

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen()));

class LoginScreen extends StatelessWidget {
  final codeCtrl = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(backgroundColor: Color(0xFF1A0B2E),
      body: Center(child: Padding(padding: EdgeInsets.all(25), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(Icons.mic_external_on, size: 80, color: Colors.purpleAccent),
        Text("PRAVIBE", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        TextField(controller: codeCtrl, style: TextStyle(color: Colors.white), decoration: InputDecoration(labelText: "Code 18273 = Owner", filled: true, fillColor: Colors.white10, border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)))),
        SizedBox(height: 20),
        SizedBox(width: double.infinity, child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.purple, padding: EdgeInsets.all(15)), onPressed: (){
          if(codeCtrl.text=="18273") Navigator.push(context, MaterialPageRoute(builder: (_)=>OwnerPanel()));
          else Navigator.push(context, MaterialPageRoute(builder: (_)=>MainApp()));
        }, child: Text("ENTER APP")))
      ]))),
    );
  }
}

class MainApp extends StatelessWidget{
  void openWA() async {
    final url = "https://wa.me/$YOUR_WHATSAPP?text=Hi Pravibe Team, I want work";
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }
  @override Widget build(BuildContext c){
    return Scaffold(backgroundColor: Color(0xFF1A0B2E), appBar: AppBar(backgroundColor: Color(0xFF2A1450), title: Text("Pravibe Party")),
      body: ListView(padding: EdgeInsets.all(20), children: [
        GestureDetector(onTap: openWA, child: Container(padding: EdgeInsets.all(16), decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple, Colors.orange]), borderRadius: BorderRadius.circular(15)), child: Row(children: [Icon(Icons.work, color: Colors.white, size: 35), SizedBox(width: 12), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("CONTACT FOR WORK", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), Text("Agency / Host Job - WhatsApp", style: TextStyle(color: Colors.white, fontSize: 11))])), Icon(Icons.chat, color: Colors.white)]))),
        SizedBox(height: 20),
        ElevatedButton(onPressed: (){}, child: Text("JOIN VOICE ROOM - Room pravibe-1"))
      ]));
  }
}

class OwnerPanel extends StatelessWidget{
  final idCtrl=TextEditingController(); final userCtrl=TextEditingController();
  @override Widget build(BuildContext context){
    return Scaffold(backgroundColor: Color(0xFF1A0B2E), appBar: AppBar(backgroundColor: Colors.red, title: Text("OWNER 18273")),
      body: Padding(padding: EdgeInsets.all(15), child: Column(children: [
        Text("FREE ME SPECIAL ID DENA", style: TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold)),
        TextField(controller: userCtrl, style: TextStyle(color: Colors.white), decoration: InputDecoration(hintText: "User ID e.g. 10045", filled: true, fillColor: Colors.white10)),
        TextField(controller: idCtrl, style: TextStyle(color: Colors.white), decoration: InputDecoration(hintText: "ID 111, 100, 777", filled: true, fillColor: Colors.white10)),
        SizedBox(height: 10),
        ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green), onPressed: (){ ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("FREE de diya ${userCtrl.text} ko ID ${idCtrl.text}!"))); }, child: Text("FREE SEND ID")),
        SizedBox(height: 20),
        ElevatedButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>MainApp())), child: Text("Go to User App"))
      ])),
    );
  }
}

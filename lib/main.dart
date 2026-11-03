import 'package:flutter/material.dart';
void main() => runApp(PravibeApp());
class PravibeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pravibe Chat',
      home: ChatScreen(),
    );
  }
}
class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}
class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _c = TextEditingController();
  List<String> m = ["Welcome to Pravibe Chat!"];
  void _send(){ if(_c.text.isNotEmpty){ setState((){ m.add(_c.text); _c.clear(); }); }}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pravibe Chat"), backgroundColor: Colors.deepPurple),
      body: Column(children: [
        Expanded(child: ListView.builder(itemCount: m.length, itemBuilder: (c,i)=>ListTile(title: Container(padding: EdgeInsets.all(10), decoration: BoxDecoration(color: Colors.purple.shade50, borderRadius: BorderRadius.circular(10)), child: Text(m[i]))))),
        Padding(padding: EdgeInsets.all(8), child: Row(children: [Expanded(child: TextField(controller: _c, decoration: InputDecoration(hintText: "Message...", border: OutlineInputBorder()))), IconButton(icon: Icon(Icons.send), onPressed: _send)]))
      ]),
    );
  }
}

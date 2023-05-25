import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Konversi',
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('UTS HERLINDA DWI NUR SYAFITRI'),
        ),
      body: Center(
        child: Column(
          children: [
            Text('DATA'),
            TextField(
              decoration:
              InputDecoration(hintText: 'NAMA'),
              onChanged: (text) {
                var textInput = text;
                if (textInput != null) {
                  setState(() {
                    var _nama = textInput;
                  });
                }
              }
            ), //nama
            TextField(
              decoration: InputDecoration(
                  hintText: 'NIM'),
              onChanged: (text) {
                var dataInput = double.tryParse(text);
                if (dataInput != null) {
                setState(() {
                  var _nilaiInput = dataInput;
                });
                }
              }
            ), //nilai input
            TextField(
              decoration:
                InputDecoration(hintText: 'TOKOH FAVORIT'),
              onChanged: (text) {
                var textInput = text;
                if (textInput != null) {
                  setState(() {
                    var _nama = textInput;
                  });
                }
              }
            ), //nama
          ],
        ),
      ),
    );
  }
}
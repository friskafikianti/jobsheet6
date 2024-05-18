import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Nama',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const TeksUtama(),
    );
  }
}

class TeksUtama extends StatefulWidget {
  const TeksUtama({super.key});

  @override
  _TeksUtamaState createState() => _TeksUtamaState();
}

class _TeksUtamaState extends State<TeksUtama> {
  int _index = 0;

  final List<String> _listNama = [
    'Friska Fikianti', 'Musafa Ali', 'Nanda Rosenatu Fahira', 'Sasi Alyaumah', 'Asep Dwi Saputra'
  ];

  final List<Color> _listWarna = [
    Colors.red, Colors.purple, Colors.teal, Colors.lime, Colors.indigo
  ];

  void _incrementIndex() {
    setState(() {
      _index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Nama'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Apa Kabar',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 20,
              ) 
            ),
            Text(
              _listNama[_index % _listNama.length],
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: _listWarna[_index % _listWarna.length],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementIndex,
        tooltip: 'Refresh',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

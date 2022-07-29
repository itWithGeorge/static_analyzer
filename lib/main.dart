import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // prefer double quotes: https://dart-lang.github.io/linter/lints/prefer_double_quotes.html
  String _buffer = 'buffer';

  @override
  void initState() {
    super.initState();
    _concatenateString();
    _useBufferProperly();
  }

  // see docs for lint error: https://dart-lang.github.io/linter/lints/use_string_buffers.html
  void _concatenateString() {
    for(var i = 0; i < 10; i++) {
      _buffer += i;
    }
    debugPrint('_concatenateString result: $_buffer');
  }

  void _useBufferProperly() {
    StringBuffer _stringBuffer = StringBuffer();
    for (var i = 0; i < 10; i++) {
      _stringBuffer.write(i);
    }
    debugPrint('_useBufferProperly: ${_stringBuffer.toString()}');

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Static analyzer')),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}




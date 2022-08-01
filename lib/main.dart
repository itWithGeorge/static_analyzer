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
  bool _showBuffer = false;

  @override
  void initState() {
    super.initState();
    //_concatenateString();
    //_useBufferProperly();
  }

  // see docs for lint error: https://dart-lang.github.io/linter/lints/use_string_buffers.html
  void _concatenateString() {
    for (var i = 0; i < 2; i++) {
      _buffer += i.toString();
    }
    debugPrint('_concatenateString result: $_buffer');
  }

  void _useBufferProperly() {
    StringBuffer _stringBuffer = StringBuffer();
    _stringBuffer.write(_buffer);
    for (var i = 0; i < 2; i++) {
      _stringBuffer.write(i);
    }
    debugPrint('_useBufferProperly: ${_stringBuffer.toString()}');
    setState(() {
      if (!_showBuffer) {
        _showBuffer = true;
      }
      _buffer = _stringBuffer.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Static analyzer'),
        actions: [
          TextButton(
            key: const Key('TextButton'),
            onPressed: _useBufferProperly,
            child: const Text('Button'),
            style: TextButton.styleFrom(primary: Colors.white),
          )
        ],
      ),
      body: _showBuffer
          ? Text(_buffer)
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}

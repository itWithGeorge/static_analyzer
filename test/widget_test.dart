import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// flutter test test/widget_test.dart
void main() {

  testWidgets('Widget_test: find AppBar title', (WidgetTester tester) async {

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Static analyzer'),),
        body: const Center(child: CircularProgressIndicator()),
      ),
    ));

    // Verify that Text is what we are looking for
    expect(find.text('Static analyzer'), findsOneWidget);
  });

  testWidgets('Widget_test: find AppBar with key', (WidgetTester tester) async {

    const _appBarKey = Key('appBar');

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        appBar: AppBar(key: _appBarKey,title: const Text('Static analyzer'),),
        body: const Center(child: CircularProgressIndicator()),
      ),
    ));

    // Verify that the widget with key is what we are looking for
    expect(find.byKey(_appBarKey), findsOneWidget);
  });

  testWidgets('Widget_test: find indicator instance', (WidgetTester tester) async {

    const _appBarWidget = Center(child: CircularProgressIndicator());

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Static analyzer'),),
        body: _appBarWidget,
      ),
    ));

    // Verify that the widget is what we are looking for
    expect(find.byWidget(_appBarWidget), findsOneWidget);
  });


}
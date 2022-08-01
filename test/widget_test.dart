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
}
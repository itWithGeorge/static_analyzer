import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter/material.dart';

import 'package:static_analyzer/main.dart' as app;

// flutter test integration_test/app_test.dart
void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  if (binding is LiveTestWidgetsFlutterBinding) {
    binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;
  }

  group('Integration test', () {
    testWidgets('tap on button and verify text', (WidgetTester tester) async {
      tester.printToConsole('tester started');
      //app.main();
      await tester.pumpWidget(const app.MyApp());
      tester.printToConsole('tester pumped');

      // do not works with that code
      // because pumpAndSettle waits for all animation to have completed,
      // BUT CircularProgressIndicator is infinite
      // https://api.flutter.dev/flutter/flutter_test/WidgetTester/pumpAndSettle.html
      /*await tester.pumpAndSettle();
      tester.printToConsole('tester settled');*/

      // add some delay as per above - maybe useless
      await Future.delayed(const Duration(seconds: 2));

      // find.byType(TextButton)
      await tester.tap(find.byKey(const Key('TextButton')));
      tester.printToConsole('tester btn pressed');

      await tester.pumpAndSettle();

      expect(find.text('buffer01'), findsOneWidget,
          reason: 'Unable to find textField');
    }, timeout: const Timeout.factor(1)); // 1*30 sec
  });
}

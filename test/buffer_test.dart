import 'package:flutter_test/flutter_test.dart';
import 'package:static_analyzer/buffer.dart';

// flutter test test/buffer_test.dart
void main() {
  group('Unit_test: buffer', () {
    test('buffer init', () {
      final _bufferInstance = Buffer();
      expect(_bufferInstance.buffer, 'buffer');
    });

    test('concatenateString', () {
      final _bufferInstance = Buffer();
      _bufferInstance.concatenateString();
      expect(_bufferInstance.buffer, 'buffer01');
    });

    test('useBufferProperly', () {
      final _bufferInstance = Buffer();
      _bufferInstance.useBufferProperly();
      expect(_bufferInstance.buffer, 'buffer01');
    });
  });
}

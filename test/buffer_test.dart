import 'package:flutter_test/flutter_test.dart';
import 'package:static_analyzer/buffer.dart';

// flutter test test/buffer_test.dart
void main() {
  test('Buffer should be concatenated', (){
    final _bufferInstance = Buffer();
    _bufferInstance.concatenateString();
    expect(_bufferInstance.buffer, "buffer01");
  });
}
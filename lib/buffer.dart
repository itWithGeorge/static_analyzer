
import 'package:flutter/material.dart';

class Buffer {
  String buffer = 'buffer';
  void concatenateString() {
    for(var i = 0; i < 2; i++) {
      buffer += i.toString();
    }

    // some addition to check coverage
    if(buffer == "foo") {
      debugPrint("foo");
    }
  }

  void useBufferProperly() {
    StringBuffer _stringBuffer = StringBuffer();
    for (var i = 0; i < 2; i++) {
      _stringBuffer.write(i);
    }
  }
}
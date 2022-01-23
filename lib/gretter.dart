
import 'dart:async';

import 'package:flutter/services.dart';

class Gretter {
  static const MethodChannel _channel = MethodChannel('gretter');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

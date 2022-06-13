
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterProjectUtils {
  static const MethodChannel _channel = MethodChannel('flutter_project_utils');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

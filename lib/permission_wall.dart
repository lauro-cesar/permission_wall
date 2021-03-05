
import 'dart:async';

import 'package:flutter/services.dart';

class PermissionWall {
  static const MethodChannel _channel =
      const MethodChannel('permission_wall');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

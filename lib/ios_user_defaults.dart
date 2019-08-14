import 'dart:async';

import 'package:flutter/services.dart';

class IosUserDefaults {
  static const MethodChannel _channel =
      const MethodChannel('ios_user_defaults');

  static void setStringWithSuiteName(String suiteName, String key, String value) async {
    await _channel.invokeMethod("setStringWithSuiteName", {
      "suiteName": suiteName,
      "key": key,
      "value": value,
    });
  }

  static Future<String> getStringWithSuiteName(String suiteName, String key) async {
    var result = await _channel.invokeMethod("getStringWithSuiteName", {
      "suiteName": suiteName,
      "key": key,
    });
    print(result);
    return result;
  }
}

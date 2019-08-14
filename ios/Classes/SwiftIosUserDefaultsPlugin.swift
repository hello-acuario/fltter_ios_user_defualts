import Flutter
import UIKit

public class SwiftIosUserDefaultsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "ios_user_defaults", binaryMessenger: registrar.messenger())
    let instance = SwiftIosUserDefaultsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let args = call.arguments as! [String: Any]
    if (call.method == "setStringWithSuiteName") {
        UserDefaults.init(suiteName: args["suiteName"] as? String)?.set(args["value"], forKey: args["key"] as! String)
    } else if (call.method == "getStringWithSuiteName") {
        result(UserDefaults.init(suiteName: args["suiteName"] as? String)?.value(forKey: args["key"] as! String))
    }
  }
}

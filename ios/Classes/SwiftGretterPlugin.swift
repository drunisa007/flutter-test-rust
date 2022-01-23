import Flutter
import UIKit

public class SwiftGretterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "gretter", binaryMessenger: registrar.messenger())
    let instance = SwiftGretterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
  public func dummyMethodToEnforceBundling() {
      // dummy calls to prevent tree shaking
      rust_greeting("");
    }
}

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'accessibility_post_method_channel.dart';

abstract class AccessibilityPostPlatform extends PlatformInterface {
  /// Constructs a AccessibilityPostPlatform.
  AccessibilityPostPlatform() : super(token: _token);

  static final Object _token = Object();

  static AccessibilityPostPlatform _instance = MethodChannelAccessibilityPost();

  /// The default instance of [AccessibilityPostPlatform] to use.
  ///
  /// Defaults to [MethodChannelAccessibilityPost].
  static AccessibilityPostPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AccessibilityPostPlatform] when
  /// they register themselves.
  static set instance(AccessibilityPostPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'accessibility_post_platform_interface.dart';

/// An implementation of [AccessibilityPostPlatform] that uses method channels.
class MethodChannelAccessibilityPost extends AccessibilityPostPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('accessibility_post');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

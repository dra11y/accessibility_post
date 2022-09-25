
import 'accessibility_post_platform_interface.dart';

class AccessibilityPost {
  Future<String?> getPlatformVersion() {
    return AccessibilityPostPlatform.instance.getPlatformVersion();
  }
}

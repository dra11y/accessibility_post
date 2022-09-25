import 'package:flutter_test/flutter_test.dart';
import 'package:accessibility_post/accessibility_post.dart';
import 'package:accessibility_post/accessibility_post_platform_interface.dart';
import 'package:accessibility_post/accessibility_post_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAccessibilityPostPlatform
    with MockPlatformInterfaceMixin
    implements AccessibilityPostPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AccessibilityPostPlatform initialPlatform = AccessibilityPostPlatform.instance;

  test('$MethodChannelAccessibilityPost is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAccessibilityPost>());
  });

  test('getPlatformVersion', () async {
    AccessibilityPost accessibilityPostPlugin = AccessibilityPost();
    MockAccessibilityPostPlatform fakePlatform = MockAccessibilityPostPlatform();
    AccessibilityPostPlatform.instance = fakePlatform;

    expect(await accessibilityPostPlugin.getPlatformVersion(), '42');
  });
}

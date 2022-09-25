#import "AccessibilityPostPlugin.h"
#if __has_include(<accessibility_post/accessibility_post-Swift.h>)
#import <accessibility_post/accessibility_post-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "accessibility_post-Swift.h"
#endif

@implementation AccessibilityPostPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAccessibilityPostPlugin registerWithRegistrar:registrar];
}
@end

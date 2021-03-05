#import "PermissionWallPlugin.h"
#if __has_include(<permission_wall/permission_wall-Swift.h>)
#import <permission_wall/permission_wall-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "permission_wall-Swift.h"
#endif

@implementation PermissionWallPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPermissionWallPlugin registerWithRegistrar:registrar];
}
@end

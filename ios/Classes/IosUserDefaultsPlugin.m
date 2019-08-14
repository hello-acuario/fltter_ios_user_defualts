#import "IosUserDefaultsPlugin.h"
#import <ios_user_defaults/ios_user_defaults-Swift.h>

@implementation IosUserDefaultsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftIosUserDefaultsPlugin registerWithRegistrar:registrar];
}
@end

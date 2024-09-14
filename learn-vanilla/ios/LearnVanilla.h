
#ifdef RCT_NEW_ARCH_ENABLED
#import "RNLearnVanillaSpec.h"

@interface LearnVanilla : NSObject <NativeLearnVanillaSpec>
#else
#import <React/RCTBridgeModule.h>

@interface LearnVanilla : NSObject <RCTBridgeModule>
#endif

@end

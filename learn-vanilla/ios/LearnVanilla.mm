#import "LearnVanilla.h"
// 导入头文件
#import <SolarEngineSDK/SolarEngineSDK.h>


@implementation LearnVanilla
RCT_EXPORT_MODULE()

// Example method
// See // https://reactnative.dev/docs/native-modules-ios
RCT_EXPORT_METHOD(multiply:(double)a
                  b:(double)b
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)
{
    NSNumber *result = @(a * b);

    resolve(result);
}


RCT_EXPORT_METHOD(preInitWithAppKey:(NSString *)appKey
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)
{
    [[SolarEngineSDK sharedInstance] preInitWithAppKey:appKey];
    resolve(@(true));
}


@end

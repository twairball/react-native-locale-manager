
#import "RNLocaleManager.h"


@interface RNLocaleManager ()
-(NSString*) getLocale;
-(NSString*) setLocale:(NSString*) locale;
-(void) clearLocale;
@end


@implementation RNLocaleManager

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE();

/*
 * Private 
 */
- (NSString*) getLocale {

    NSArray *locales = [[NSUserDefaults standardUserDefaults] objectForKey:@"AppleLanguages"];
    if (locales == nil) { return nil; }
    if ([locales count] == 0) { return nil; }

    NSString* currentLocale = locales[0];
    return currentLocale;
} 

- (NSString*) setLocale: (NSString*)locale {
    [[NSUserDefaults standardUserDefaults] setObject:@[locale] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    return locale;
}

- (void) clearLocale {
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    return;
}
/*
 * For JS
 */

RCT_EXPORT_METHOD(get:
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)
{
    resolve([self getLocale]);
}

RCT_EXPORT_METHOD(set:(NSString *)locale)
{
    [self setLocale:locale];
}

RCT_EXPORT_METHOD(clear)
{
    [self clear];
}


@end


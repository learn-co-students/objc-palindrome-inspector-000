//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}




- (BOOL) stringIsPalindrome: (NSString *) string {
   
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];
    NSString *withoutPunctuations = [string copy];
    for (NSUInteger i=0; i<[punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuations = [withoutPunctuations stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    
    NSString *spaceless = [withoutPunctuations stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [spaceless lowercaseString];
    NSString *reverse = [self stringByReversingString: lowercase];
    
    BOOL stringIsEqualToReverse = [lowercase isEqualToString: reverse];
    return stringIsEqualToReverse;
}

- (NSString *) stringByReversingString: (NSString *) string {
    
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", c];
    }
    
    return result;
}

@end

//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSString *lowercase = [string lowercaseString];
    
    // because i felt like it
    NSRegularExpression *alphaOnlyRegex = [NSRegularExpression regularExpressionWithPattern:@"[^a-z]"
                                                                                    options:NSRegularExpressionCaseInsensitive
                                                                                      error:NULL];
    
    NSString *alphabeticalString = [alphaOnlyRegex stringByReplacingMatchesInString:lowercase options:0 range:NSMakeRange(0, [lowercase length]) withTemplate:@""];
    
    NSString *reversedString = [self stringByReversingString:alphabeticalString];
    
    BOOL isPalindrome = [alphabeticalString isEqualToString:reversedString];
    
    return isPalindrome;
}

- (NSString *)stringByReversingString:(NSString *)string {
    
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    
    return result;
}


@end

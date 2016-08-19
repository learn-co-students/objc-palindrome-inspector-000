//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSString* palindrome = @"palindrome";
    BOOL palindromeIsPalindrome = [self stringIsPalindrome:palindrome];
    NSLog(@"%d: %@",palindromeIsPalindrome, palindrome);

    NSString *bob = @"Bob";
    BOOL bobIsPalindrome = [self stringIsPalindrome:bob];
    NSLog(@"%d: %@",bobIsPalindrome, bob);
    
    NSString *iPreferPi = @"I prefer pi";
    BOOL iPreferPiIsPalindrome = [self stringIsPalindrome:iPreferPi];
    NSLog(@"%d: %@",iPreferPiIsPalindrome, iPreferPi);
    
    NSString *fleeToMeRemoteElf = @"Flee to me, remote elf.";
    BOOL fleeToMeRemoteElfIsPalindrome = [self stringIsPalindrome:fleeToMeRemoteElf];
    NSLog(@"%d: %@",fleeToMeRemoteElfIsPalindrome, fleeToMeRemoteElf);
    
    return YES;
}

/**
 
 * Implement your methods here.
 
 */

- (BOOL) stringIsPalindrome:(NSString *)string {
    NSArray *punctuations = @[@".",@",",@"!",@"?",@":",@";"];
    NSString *withoutPunctuations = [string copy];
    for (NSUInteger i=0; i<[punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuations = [withoutPunctuations stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    NSString *spaceless = [withoutPunctuations stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [spaceless lowercaseString];
    NSString *reverse = [self stringByReversingString:lowercase];
//    NSLog(@"reverse: %@, lowercase: %@",reverse, lowercase);
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    return stringIsEqualToReverse;
}

- (NSString*) stringByReversingString:(NSString *)string {
    NSString* result = @"";
    
    for (NSUInteger i=[string length]; i>0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    return result;
}


@end

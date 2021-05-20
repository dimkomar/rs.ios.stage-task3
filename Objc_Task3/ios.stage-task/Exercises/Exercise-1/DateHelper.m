#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    
    NSDictionary* monthDict = @{@1: @"January",
                                @2: @"February",
                                @3: @"March",
                                @4: @"April",
                                @5: @"May",
                                @6: @"June",
                                @7: @"July",
                                @8: @"August",
                                @9: @"September",
                                @10: @"October",
                                @11: @"November",
                                @12: @"December"
    };
    
    for (id key in monthDict) {
        if ([key intValue] == monthNumber){
            return [monthDict objectForKey:key];
        }
    }
    
    /*
     for(id key in myDict) {
         id value = [myDict objectForKey:key];
         [value doStuff];
     }
     */
    
    
    
    
    return nil;
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    return 0;
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    return nil;
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    return NO;
}

@end

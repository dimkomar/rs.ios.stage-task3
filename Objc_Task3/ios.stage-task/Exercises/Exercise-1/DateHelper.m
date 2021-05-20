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
    
    return nil;
}

#pragma mark - Second

/*
 В данном таске вы будете работать с конкретной датой представленной в строковом виде “2018-03-15T16:37:29Z”
 Задание: Получить день из данной даты.
 Пример: ввели дату “2018-03-28T16:37:29Z” получили 28
 */

- (long)dayFromDate:(NSString *)date {
    NSString *dateFormat = @"yyyy-MM-dd'T'HH:mm:ssZ";
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = dateFormat;
    NSDate *dateFromString = [dateFormatter dateFromString:date];
    if (dateFromString == nil){
        return 0;;
    } else {
        NSLog(@"%@", dateFromString);
        NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay fromDate:dateFromString];
            return [components day];
    }
}

#pragma mark - Third

/*
 Задание: Получить день недели из даты.
 День недели должен быть:
 a) На русском языке
 б) В сокращенном виде
 Пример: ввели дату “19-May-2021” получили “Ср”
 */
- (NSString *)getDayName:(NSDate*) date {
    NSDictionary* dayDict = @{@"Monday": @"Пн",
                              @"Thursday": @"Вт",
                              @"Wednesday": @"Ср",
                              @"Thursday": @"Чт",
                              @"Friday": @"Пт",
                              @"Saturday": @"Сб",
                              @"Sunday": @"Вс"};
    
    NSDateFormatter *weekday = [[NSDateFormatter alloc] init];
    [weekday setDateFormat: @"EEEE"];
    for (id key in dayDict) {
        NSLog(@"The day of the week is: %@", [weekday stringFromDate:date]);
        if ([key isEqualToString:[weekday stringFromDate:date]]){
            return [dayDict objectForKey:key];
        }
    }

    return nil;
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    return NO;
}

@end

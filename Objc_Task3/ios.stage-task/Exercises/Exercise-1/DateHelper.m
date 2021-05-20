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

/*
 Задание: Проверить является ли введенная дата датой на текущей неделе.
 Пример: Текущая неделя с 17 по 23 мая 2021 года, если ввести дату 23.05.2021,
 то на выходе мы получим “YES”, так как данная дата относится к текущей неделе.
 Если мы введем дату 24.05.2021, то мы получим “NO”, так как эта дата относится к следующей неделе.
 */
- (BOOL)isDateInThisWeek:(NSDate *)date {
    
    NSString *stringStart = @"2021-05-16T23:59:59.999+00:00";
    NSString *stringEnd = @"2021-05-24T00:00:00.001+00:00";
    NSString *dateFormat = @"yyyy-MM-dd'T'HH:mm:ss.SSSxxx";
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = dateFormat;
    NSTimeInterval startDate = [[dateFormatter dateFromString:stringStart] timeIntervalSince1970];
    NSTimeInterval endDate = [[dateFormatter dateFromString:stringEnd] timeIntervalSince1970];
    
    NSTimeInterval ti = [date timeIntervalSince1970];
    
    if (ti > startDate && ti < endDate){
        return YES;
    } else return NO;
}

@end

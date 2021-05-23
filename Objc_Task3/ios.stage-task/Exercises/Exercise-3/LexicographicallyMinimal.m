#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    

    NSString *stringFirstArray = [NSMutableString stringWithString:string1];
    NSString *stringSecondArray = [NSMutableString stringWithString:string2];
    NSMutableString *resultString = [[NSMutableString alloc]init];
    
    
    while ((stringFirstArray.length != 0) && (stringSecondArray.length != 0)) {
            if ([stringFirstArray characterAtIndex:0] <= [stringSecondArray characterAtIndex:0]){
                [resultString appendString:[NSString stringWithFormat:@"%c", [stringFirstArray characterAtIndex:0]]];
                stringFirstArray = [stringFirstArray substringFromIndex:1];
            } else {
                [resultString appendString:[NSString stringWithFormat:@"%c", [stringSecondArray characterAtIndex:0]]];
                stringSecondArray = [stringSecondArray substringFromIndex:1];
            }
        
        NSLog(@"STR1 IS: %lu =================",(unsigned long)stringFirstArray.length);
        NSLog(@"STR2 IS: %lu =================",(unsigned long)stringSecondArray.length);
    }
    NSLog(@"RESULT IS: %@",resultString);
    
    [stringFirstArray length] == 0 ? [resultString appendString:stringSecondArray] : [resultString appendString:stringFirstArray];
    NSLog(@"STR1 IS: %lu =================",(unsigned long)stringFirstArray.length);
    NSLog(@"STR2 IS: %lu =================",(unsigned long)stringSecondArray.length);
    return resultString;
   
}

@end

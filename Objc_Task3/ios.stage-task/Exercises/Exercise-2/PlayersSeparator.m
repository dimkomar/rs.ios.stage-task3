#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    
    /*
     There are `n` basketball players in a row (think of it as an array, where each index of the array is a separate player). Each of the players has a personal score rating.
     You have to form a team of 3 players amongst them under the following rules:
     - Choose 3 players with index (`i, j, k`) with rating (`ratingArray[i], ratingArray[j], ratingArray[k]`).
     - Each team must meet one of the conditions: (`ratingArray[i] < ratingArray[j] < ratingArray[k]`) or (`ratingArray[i] > ratingArray[j] > ratingArray[k]`) where (`0 <= i < j < k < n`).
     - All the numbers in `ratingArray` are **unique**.
     */
    
    NSInteger teamCount = 0;
        
    if (ratingArray.count < 3) {
        return 0;
    }
        //iteration with 3 values at the same time
    for (int i = 0; i < ratingArray.count; i++) {
        for (int j = i + 1; j < ratingArray.count; j++){
            for (int k = j + 1; k < ratingArray.count; k++){
                    if (ratingArray[i].intValue < ratingArray[j].intValue && ratingArray[j].intValue < ratingArray[k].intValue) {
                        teamCount++;
                    }
                    else if (ratingArray[i].intValue > ratingArray[j].intValue && ratingArray[j].intValue > ratingArray[k].intValue) {
                            teamCount++;
                    }
            }
        }
    }
    
    return teamCount;

}

@end

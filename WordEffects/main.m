//
//  main.m
//  WordEffects
//
//  Created by Livleen Rai on 2017-07-24.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        while (TRUE) {
            
            char inputOptionNum[5];
            
            NSLog(@"Which operation would you like to perform?\n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6.De-Space");
            fgets(inputOptionNum, 5, stdin);
            NSString *inputOptionNumString = [NSString stringWithUTF8String:inputOptionNum];

            
            char inputChars[255];
            
            printf("Input a string: ");
            fgets(inputChars, 255, stdin);
            printf("Your string is %s\n", inputChars);
            
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            NSLog(@"Input was: %@", inputString);
            
            
            if([inputOptionNumString isEqualTo:@"1\n"]) {
                NSString *upperCaseString = [inputString uppercaseString];
                NSLog(@"%@", upperCaseString);
            }else if([inputOptionNumString isEqualTo:@"2\n"]) {
                NSString *lowerCaseString = [inputString lowercaseString];
                NSLog(@"%@", lowerCaseString);
            }else if([inputOptionNumString isEqualTo:@"3\n"]) {
                int numberizedString = [inputString intValue];
                NSLog(@"%d", numberizedString);
            }else if([inputOptionNumString isEqualTo:@"4\n"]) {
                NSString *canadianString = [inputString stringByAppendingString:@" eh?"];
                NSLog(@"%@", canadianString);
            }else if([inputOptionNumString isEqualTo:@"5\n"]) {
                if([inputString containsString:@"?"]) {
                    NSLog(@"I don't know");
                }else if([inputString containsString:@"!"]) {
                    NSLog(@"Whoa, calm down");
                }
            }else if([inputOptionNumString isEqualTo:@"6\n"]) {
                NSString *deSpacedString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"%@", deSpacedString);
            }else{
                NSLog(@"Sorry, that's not an option");
            }
            
            }
        }
    return 0;
}

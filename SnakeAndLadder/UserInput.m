//
//  UserInput.m
//  SnakeAndLadder
//
//  Created by Steve on 2015-08-30.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "UserInput.h"

@implementation UserInput

- (NSString *)inputForPrompt:(NSString *)promptString {
    char inputString[255];
    
    NSLog(@"%@", promptString);
    
    fgets(inputString, 255, stdin);
    
    NSString *userInput = [NSString stringWithUTF8String:inputString];
    
    userInput = [userInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    // return user input.
    
    return userInput;
}

@end

//
//  main.m
//  SnakeAndLadder
//
//  Created by Steve on 2015-08-30.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameController.h"
#import "Player.h"
#import "UserInput.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        UserInput *input = [[UserInput alloc] init];
        
        
        NSString *select = [input inputForPrompt:@"Enter the dimension of the board:"];
        
        NSInteger dimension = [select integerValue], dieValue;
        
        GameController *game = [[GameController alloc] initWithDimension:(int)dimension];
        
        
        while (game.player1.position.position < pow(dimension, 2) - 1 && game.player2.position.position < pow(dimension, 2) -1) {
            select = [input inputForPrompt:@"Player1's turn. Please enter die value:"];
            dieValue = [select integerValue];
            [game movePlayer:(int)dieValue playerId:1];
            if(game.player1.position.position >= pow(dimension, 2) - 1) {
                break;
            }
            
            select = [input inputForPrompt:@"Player2's turn. Please enter die value:"];
            dieValue = [select integerValue];
            [game movePlayer:(int)dieValue playerId:2];
        }
        printf("Game over!");
    }
    return 0;
}

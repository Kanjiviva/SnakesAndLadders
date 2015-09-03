//
//  GameController.m
//  SnakeAndLadder
//
//  Created by Steve on 2015-08-30.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)initWithDimension:(int)dimension
{
    self = [super init];
    if (self) {
        _dimension = dimension;
        Grid *grid = [[Grid alloc] initWithPos:0];
        
        _start = grid;
        Player *player1 = [[Player alloc] initWithPos:_start];
        Player *player2 = [[Player alloc] initWithPos:_start];
        _player1 = player1;
        _player2 = player2;
        [self createBoard];
    }
    return self;
}

- (void)createBoard {
    
    Grid *cursor = self.start;
    
    for (int i =  1; i < pow(self.dimension, 2); i++) {
        Grid *grid = [[Grid alloc] initWithPos:i];
        Grid *temp = cursor;
        
        cursor.next = grid;
        cursor = cursor.next;
        cursor.previous = temp;
        
    }
    
    cursor = self.start;
    for (int i = 1; i < pow(self.dimension, 2); i++) {
        [cursor assignAction:self.dimension];
        cursor = cursor.next;
    }
    
    
}

- (void)movePlayer:(int)number playerId:(int)playerId {
    for (int i = 0; i < number; i++) {
        if (playerId == 1) {
            if (self.player1.position.next == nil) {
                break;
            }
            self.player1.position = self.player1.position.next;
        } else {
            if (self.player2.position.next == nil) {
                break;
            }
            self.player2.position = self.player2.position.next;
        }
    }
    if (playerId == 1) {
        if(self.player1.position.next == nil) {
            printf("Player 1 has reached box number %i. Player 1 wins!", self.player1.position.position);
        } else {
            printf("Player 1 moved to box number %i.\n", self.player1.position.position);
        }
    } else {
        if(self.player2.position.next == nil) {
            printf("Player 2 has reached box number %i. Player 2 wins!", self.player2.position.position);
        } else {
            printf("Player 2 moved to box number %i.\n", self.player2.position.position);
        }
    }
    [self checkAction:playerId];
}

- (void)checkAction:(int)playerId {
    
    if (playerId == 1) {
        if (self.player1.position.action != nil) {
            BOOL isSnake = self.player1.position.action.isSnake;
            self.player1.position = self.player1.position.action.leadsTo;
            if(isSnake) {
                printf("Player 1 stepped on a snake and got moved to box number %i.\n", self.player1.position.position);
            } else {
                printf("Player 1 stepped on a ladder and got moved to box number %i.\n", self.player1.position.position);
            }
        }
    } else {
        if (self.player2.position.action != nil) {
            BOOL isSnake = self.player2.position.action.isSnake;
            self.player2.position = self.player2.position.action.leadsTo;
            if(isSnake) {
                printf("Player 2 stepped on a snake and got moved to box number %i.\n", self.player2.position.position);
            } else {
                printf("Player 2 stepped on a ladder and got moved to box number %i.\n", self.player2.position.position);
            }
        }
    }
    
}

@end

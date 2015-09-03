//
//  GameController.h
//  SnakeAndLadder
//
//  Created by Steve on 2015-08-30.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Grid.h"

@interface GameController : NSObject

@property (strong, nonatomic) Player *player1;
@property (strong, nonatomic) Player *player2;
@property (strong, nonatomic) Grid *start;
@property (assign, nonatomic) int dimension;

- (instancetype)initWithDimension:(int)dimension;
-(void)movePlayer:(int)number playerId:(int)playerId;

@end

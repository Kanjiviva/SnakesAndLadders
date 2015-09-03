//
//  Snakes.h
//  SnakeAndLadder
//
//  Created by Steve on 2015-08-30.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Grid;

@interface SnakeLadder : NSObject

@property (strong, nonatomic) Grid *leadsTo;
@property (assign, nonatomic) BOOL isSnake;

-(instancetype) initWithPosition:(Grid *)pos andDimension:(int)dimension isSnake:(BOOL)isSnake;

@end

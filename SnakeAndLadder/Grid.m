//
//  Grid.m
//  SnakeAndLadder
//
//  Created by Steve on 2015-08-30.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "Grid.h"

@implementation Grid



-(instancetype) initWithPos:(int)pos {
    self = [super init];
    
    _position = pos;
    _action = nil;
    _next = nil;
    _previous = nil;
    
    return self;
    
}

-(void) assignAction:(int)dimension {
    int temp = arc4random_uniform(10);
    int minimumSnakePos = 3, maximumLadderPos = pow(dimension, 2) - 3;
    
    if(self.position < minimumSnakePos || self.position > maximumLadderPos) {
        _action = nil;
    } else {
        if(temp < 1) {
            SnakeLadder *snake = [[SnakeLadder alloc] initWithPosition:self andDimension:dimension isSnake:YES];
            _action = snake;
        
        } else if (temp < 2){
            SnakeLadder *ladder = [[SnakeLadder alloc] initWithPosition:self andDimension:dimension isSnake:NO];
            _action = ladder;
        
        } else {
            _action = nil;
        
        }
    }
}

@end

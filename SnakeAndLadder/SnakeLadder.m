//
//  Snakes.m
//  SnakeAndLadder
//
//  Created by Steve on 2015-08-30.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "SnakeLadder.h"
#import "Grid.h"

@implementation SnakeLadder


-(instancetype) initWithPosition:(Grid *)pos andDimension:(int)dimension isSnake:(BOOL)isSnake{
    
    _isSnake = isSnake;
    _leadsTo = pos;
    int minimumIncrement = 3, minimumDecrement = 3;
    if (!isSnake){
        int increment = arc4random_uniform(pow(dimension, 2) - pos.position - minimumIncrement) + minimumIncrement;
        for (int i = 0; i < increment; i++) {
            if(_leadsTo.next != nil) {
                _leadsTo = _leadsTo.next;
            }
        }
    } else {
        int decrement = pos.position - arc4random_uniform(pos.position - minimumDecrement);
        for (int i = 0; i < decrement; i++) {
            if(_leadsTo.previous != nil) {
                _leadsTo = _leadsTo.previous;
            }
        }
        
    }
    
    return self;
}

@end

//
//  Player.m
//  SnakeAndLadder
//
//  Created by Steve on 2015-08-30.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithPos:(Grid *)position
{
    self = [super init];
    if (self) {
        _position = position;

    }
    return self;
}

@end

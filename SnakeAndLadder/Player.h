//
//  Player.h
//  SnakeAndLadder
//
//  Created by Steve on 2015-08-30.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Grid.h"

@interface Player : NSObject

@property (strong, nonatomic) Grid *position;

- (instancetype)initWithPos:(Grid *)position;

@end

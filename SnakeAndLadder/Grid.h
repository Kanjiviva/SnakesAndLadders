//
//  Grid.h
//  SnakeAndLadder
//
//  Created by Steve on 2015-08-30.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SnakeLadder.h"


@interface Grid : NSObject

@property (strong, nonatomic) SnakeLadder *action;

@property (nonatomic) int position;
@property (strong, nonatomic) Grid *next;
@property (strong, nonatomic) Grid *previous;

-(instancetype) initWithPos:(int)pos;

-(void) assignAction:(int)dimension;

@end

//
//  BallModel.m
//  PuzzleDemo
//
//  Created by Rettig Sebastian on 3/4/16.
//  Copyright © 2016 Proto Data Center. All rights reserved.
//

#import "BallModel.h"
#include <CoreGraphics/CGGeometry.h>


@interface BallModel()

@property CGSize size;

@end


@implementation BallModel

-(instancetype)init {
    self = [super init];
    if(self) {
        self.size = CGSizeMake(50, 50);
    }
    return self;
}


@end

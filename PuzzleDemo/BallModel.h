//
//  BallModel.h
//  PuzzleDemo
//
//  Created by Rettig Sebastian on 3/4/16.
//  Copyright © 2016 Proto Data Center. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, BallType) {
    BallGreen,
    BallYellow,
    BallRed,
    BallBlue
};

@interface BallModel : NSObject

@property BallType ballType;

@end

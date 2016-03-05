//
//  PuzzleView.m
//  PuzzleDemo
//
//  Created by Rettig Sebastian on 3/4/16.
//  Copyright © 2016 Proto Data Center. All rights reserved.
//

#import "PuzzleView.h"
#import "BallModel.h"

@interface PuzzleView()

@property (nonatomic) NSArray<BallModel*>* balls;

@end

@implementation PuzzleView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGRect line1 = CGRectMake(30.0f, 30.0f, 100.0f, 100.0f);
    [self drawLine:line1];
    
    CGRect circle1 = CGRectMake(120.0f, 120.0f, 20.0f, 20.0f);
    [self drawCircle:circle1];
    
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
//    
//    // Draw them with a 2.0 stroke width so they are a bit more visible.
//    CGContextSetLineWidth(context, 2.0f);
//    
//    CGContextMoveToPoint(context, 40.0f, 40.0f); //start at this point
//    
//    CGContextAddLineToPoint(context, 60.0f, 60.0f); //draw to this point
//    
//    CGRect circle1 = CGRectMake(120.0f, 120.0f, 20.0f, 20.0f);
//    [self drawCircle:context inRect:circle1];
//    
//    // and now draw the Path!
//    CGContextStrokePath(context);
}

- (void)drawLine:(CGRect)rect {
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:rect.origin];
    [path addLineToPoint:CGPointMake(rect.origin.x + rect.size.width, rect.origin.y + rect.size.height)];
    path.lineWidth = 2;
    [[UIColor redColor] setStroke];
    [path stroke];
}

- (void)drawCircle:(CGRect)rect {
    UIBezierPath* path = [UIBezierPath bezierPathWithOvalInRect:rect];
    [[UIColor blueColor] setFill];
    [path fill];
}

@end

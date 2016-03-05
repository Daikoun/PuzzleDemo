//
//  ViewController.m
//  PuzzleDemo
//
//  Created by Rettig Sebastian on 3/4/16.
//  Copyright © 2016 Proto Data Center. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handlePan:(UIPanGestureRecognizer *)recognizer {
    CGPoint point = [recognizer translationInView:self.view];
    
    if (recognizer.state == UIGestureRecognizerStateBegan) {
        NSLog(@"State Began x:%f y:%f", point.x, point.y);
    }
    else if (recognizer.state == UIGestureRecognizerStateChanged) {
        NSLog(@"State Changed x:%f y:%f", point.x, point.y);
    }
    
    else if (recognizer.state == UIGestureRecognizerStateEnded) {
            NSLog(@"State Ended x:%f y:%f", point.x, point.y);
        }
    
//    CGPoint translation = [recognizer translationInView:self.view];
//    recognizer.view.center = CGPointMake(recognizer.view.center.x + translation.x,
//                                         recognizer.view.center.y + translation.y);
//    [recognizer setTranslation:CGPointMake(0, 0) inView:self.view];
    
}@end

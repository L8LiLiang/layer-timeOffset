//
//  ViewController.m
//  timeOffset
//
//  Created by 李亮 on 15/5/21.
//  Copyright (c) 2015年 李亮. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *myView;
@property (weak, nonatomic) CABasicAnimation *changeColor;
@end

@implementation ViewController
- (IBAction)slid:(UISlider *)sender {
    self.myView.layer.timeOffset = sender.value;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    CABasicAnimation *changeColor = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
    changeColor.fromValue = (id)[UIColor orangeColor].CGColor;
    changeColor.toValue = (id)[UIColor blueColor].CGColor;
    changeColor.duration = 1;
    [self.myView.layer addAnimation:changeColor forKey:nil];
    self.myView.layer.speed = 0;
    self.changeColor = changeColor;
}

@end

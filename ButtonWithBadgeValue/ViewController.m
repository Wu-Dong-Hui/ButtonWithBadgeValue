//
//  ViewController.m
//  ButtonWithBadgeValue
//
//  Created by QSQ on 14/11/26.
//  Copyright (c) 2014年 QSQ. All rights reserved.
//

#import "ViewController.h"
#import "ButtonWithBadgeValue.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ButtonWithBadgeValue *button = [ButtonWithBadgeValue buttonWithType:UIButtonTypeCustom];
    button.centerX = 100 - 30;
    button.centerY = 20;
    button.radius = 15;
    button.badgeValue = @"5";
    button.frame = CGRectMake(100, 100, 100, 50);
    [self.view addSubview:button];
    button.backgroundColor = [UIColor lightGrayColor];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)buttonClicked:(UIButton *)button
{
    NSLog(@"buttonClicked");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  ZHCountDownButton
//
//  Created by 左梓豪 on 2018/11/28.
//  Copyright © 2018 左梓豪. All rights reserved.
//

#import "ViewController.h"
#import "ZHCountDownButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createCountDownButton];
}

- (void)createCountDownButton {
    ZHCountDownButton *countDownBtn = [ZHCountDownButton buttonWithType:UIButtonTypeCustom];
    countDownBtn.frame = CGRectMake(0, 0, 100, 50);
    countDownBtn.center = self.view.center;
    [countDownBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [countDownBtn setTitle:@"开始计时" forState:UIControlStateNormal];
    countDownBtn.layer.cornerRadius = 4.0f;
    countDownBtn.layer.borderWidth = 2.0f;
    countDownBtn.countDownTime = 30;
    [countDownBtn addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    countDownBtn.restartTitle = @"重新开始";
    [self.view addSubview:countDownBtn];
}

- (void)clickButton:(UIButton *)button {
    ZHCountDownButton *countDownButton = (ZHCountDownButton *)button;
    [countDownButton startCountDown];
}


@end

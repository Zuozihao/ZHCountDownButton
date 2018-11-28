//
//  ZHCountDownButton.m
//  ZHCountDownButton
//
//  Created by 左梓豪 on 2018/11/28.
//  Copyright © 2018 左梓豪. All rights reserved.
//

#import "ZHCountDownButton.h"

@implementation ZHCountDownButton {
    NSInteger   _currentCount;
}

- (void)setCountDownTime:(NSInteger)countDownTime {
    _countDownTime = countDownTime;
}

- (void)startCountDown {
    NSLog(@"Start Count");
    self.userInteractionEnabled = NO;
    _currentCount = self.countDownTime;
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(countTime:) userInfo:nil repeats:true];
}

- (void)countTime:(NSTimer *)timer {
    _currentCount--;
    if (_currentCount == 0) {
        [timer invalidate];
        self.userInteractionEnabled = YES;
        [self setTitle:_restartTitle forState:UIControlStateNormal];
    } else {
        [self setTitle:[NSString stringWithFormat:@"%ldS",_currentCount] forState:UIControlStateNormal];
        NSLog(@"%ld",_currentCount);
    }
}
@end

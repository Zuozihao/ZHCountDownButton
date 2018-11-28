//
//  ZHCountDownButton.h
//  ZHCountDownButton
//
//  Created by 左梓豪 on 2018/11/28.
//  Copyright © 2018 左梓豪. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZHCountDownButton : UIButton

@property(nonatomic,assign) NSInteger countDownTime;
@property(nonatomic, copy) NSString *restartTitle;

- (void)startCountDown;

@end

NS_ASSUME_NONNULL_END

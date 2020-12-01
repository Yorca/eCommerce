//
//  YCMineHeadView.h
//  eCommerce
//
//  Created by admin on 2020/7/15.
//  Copyright © 2020 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^regisBtnBlock)();

@interface YCMineHeadView : UIView
@property (strong,nonatomic) UIImageView *headBackImage;
@property (strong,nonatomic) UIButton *loginBtn;
@property (strong,nonatomic) UIButton *regisBtn;
@property (copy,nonatomic) regisBtnBlock regisBlock;

@end

NS_ASSUME_NONNULL_END

//
//  YCLoginView.h
//  eCommerce
//
//  Created by admin on 2020/7/17.
//  Copyright © 2020 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN



@interface YCLoginView : UIView<UITextFieldDelegate>
@property (nonatomic,strong) UILabel *headLabel;
@property (nonatomic,strong) UITextField *usrNamerTF;
@property (nonatomic,strong) UITextField *pswTF;
@property (nonatomic,strong) UIButton *nextStepBtn;
@property (nonatomic,strong) UIButton *goLoginBtn;
@property (nonatomic,strong) UILabel *telLabel;
@property (nonatomic,strong) UILabel *pswLabel;
@end

NS_ASSUME_NONNULL_END

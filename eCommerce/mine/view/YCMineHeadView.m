//
//  YCMineHeadView.m
//  eCommerce
//
//  Created by admin on 2020/7/15.
//  Copyright © 2020 admin. All rights reserved.
//

#import "YCMineHeadView.h"

@implementation YCMineHeadView

-(instancetype) initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if(self){
        [self addSubview:self.headBackImage];
        [self addSubview:self.loginBtn];
        [self addSubview:self.regisBtn];
        
        __weak typeof(self) weakSelf=self;
        [_headBackImage mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(weakSelf);//所有边对齐
        }];
        
        [_loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(weakSelf.mas_centerX).offset(-80); //中心点是按钮的坐标点
            make.centerY.equalTo(weakSelf.mas_centerY);
            make.size.mas_equalTo(CGSizeMake(100,30));
            
            
        }];
        
        [_regisBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(weakSelf.mas_centerX).offset(80); //中心点是按钮的坐标点
            make.centerY.equalTo(weakSelf.mas_centerY);
            make.size.mas_equalTo(CGSizeMake(100,30));
        }];
    }
    return self;
    
    
}

-(UIImageView *)headBackImage{
    if(!_headBackImage){
        _headBackImage=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"我的背景"]];
        
    }
    return _headBackImage;
}

-(UIButton *)loginBtn{
        if(!_loginBtn){
            _loginBtn=[UIButton buttonWithType:(UIButtonTypeCustom)];
            [_loginBtn setTitle:@"Login" forState:(UIControlStateNormal)];
            _loginBtn.titleLabel.font=[UIFont systemFontOfSize:25.0f];
            _loginBtn.titleLabel.textColor=[UIColor whiteColor];
        }
    return _loginBtn;
    }

-(UIButton *)regisBtn{
    if(!_regisBtn){
        _regisBtn=[UIButton buttonWithType:(UIButtonTypeCustom)];
        [_regisBtn setTitle:@"Register" forState:(UIControlStateNormal)];
        _regisBtn.titleLabel.font=[UIFont systemFontOfSize:25.0f];
        [_regisBtn addTarget:self action:@selector(pushRegisController) forControlEvents:(UIControlEventTouchUpInside)];
        _regisBtn.titleLabel.textColor=[UIColor whiteColor];
    }
    return _regisBtn;
}

-(void)pushRegisController{
    if(_regisBlock){
        _regisBlock();
    }
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

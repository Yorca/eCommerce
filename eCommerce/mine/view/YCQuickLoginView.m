//
//  YCQuickLoginView.m
//  eCommerce
//
//  Created by admin on 2020/7/17.
//  Copyright © 2020 admin. All rights reserved.
//

#import "YCQuickLoginView.h"

@implementation YCQuickLoginView

- (instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if(self){
        [self addSubview:self.quickLoginLabel];
        [self addSubview:self.qqBtn];
        [self addSubview:self.wechatBtn];
        [self addSubview:self.mBlogBtn];
        [self addSubview:self.lineLabel1];
        [self addSubview:self.lineLabel2];
        [self layoutSubviews];
    }
    return self;
    
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    __weak typeof (self) weakSelf = self;
    
    [_quickLoginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(weakSelf.mas_centerX);
       // make.centerY.equalTo(weakSelf.view.mas_centerY);
        make.top.equalTo(weakSelf.mas_top);
        
    }];
    
    [_wechatBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(weakSelf.mas_centerX);
        make.top.equalTo(weakSelf.quickLoginLabel.mas_top).offset(40);
    }];
    
    [_qqBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(weakSelf.wechatBtn.mas_centerY);
        make.right.equalTo(weakSelf.wechatBtn.mas_left).offset(-(VIEW_WIDTH-135)/4);
    }];
    
    [_mBlogBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(weakSelf.wechatBtn.mas_centerY);
        make.left.equalTo(weakSelf.wechatBtn.mas_right).offset((VIEW_WIDTH-135)/4);
    }];
    
    [_lineLabel1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.quickLoginLabel.mas_centerY);
        make.left.equalTo(weakSelf.mas_left).offset(30);
        make.right.equalTo(weakSelf.quickLoginLabel.mas_left).offset(-5);
        make.height.equalTo(@1);
        
    }];
    
    [_lineLabel2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.quickLoginLabel.mas_centerY);
        make.right.equalTo(weakSelf.mas_right).offset(-30);
        make.left.equalTo(weakSelf.quickLoginLabel.mas_right).offset(5);
        make.height.equalTo(@1);
    }];
    
    
    
}


-(UILabel *)quickLoginLabel{
    if(!_quickLoginLabel){
        _quickLoginLabel=[[UILabel alloc]init];
        _quickLoginLabel.text=@"Quick Login";
     //   _quickLoginLabel.backgroundColor=[UIColor whiteColor];
        _quickLoginLabel.textColor=RGB(190, 190, 190);
        _quickLoginLabel.textAlignment=NSTextAlignmentCenter;
    }
    return _quickLoginLabel;
}

-(UIButton *)qqBtn{
    if(!_qqBtn){
        _qqBtn=[UIButton buttonWithType:(UIButtonTypeCustom)];
        [_qqBtn setImage:[UIImage imageNamed:@"登录界面qq登陆"] forState:(UIControlStateNormal)];
        
    }
    return _qqBtn;
}

-(UIButton *)wechatBtn{
    if(!_wechatBtn){
        _wechatBtn=[UIButton buttonWithType:(UIButtonTypeCustom)];
         [_wechatBtn setImage:[UIImage imageNamed:@"登录界面微信登录"] forState:(UIControlStateNormal)];
    }
    return _wechatBtn;
}

-(UIButton *)mBlogBtn{
    if(!_mBlogBtn){
        _mBlogBtn=[UIButton buttonWithType:(UIButtonTypeCustom)];
        [_mBlogBtn setImage:[UIImage imageNamed:@"登陆界面微博登录"] forState:(UIControlStateNormal)];
    }
    return _mBlogBtn;
}

-(UILabel *)lineLabel1{
    if(!_lineLabel1){
        _lineLabel1=[[UILabel alloc]init];
        _lineLabel1.backgroundColor=RGB(190, 190, 190);
        
        
    }
    return _lineLabel1;
}

-(UILabel *)lineLabel2{
    if(!_lineLabel2){
        _lineLabel2=[[UILabel alloc]init];
        _lineLabel2.backgroundColor=RGB(190, 190, 190);
        
        
    }
    return _lineLabel2;
}


@end

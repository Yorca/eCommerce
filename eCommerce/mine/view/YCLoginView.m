//
//  YCLoginView.m
//  eCommerce
//
//  Created by admin on 2020/7/17.
//  Copyright © 2020 admin. All rights reserved.
//

#import "YCLoginView.h"

@implementation YCLoginView

-(instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if(self){
        [self addSubview:self.headLabel];
        [self addSubview:self.usrNamerTF];
        [self addSubview:self.pswTF];
        [self addSubview:self.nextStepBtn];
        [self addSubview:self.goLoginBtn];
        [self addSubview:self.telLabel];
        [self addSubview:self.pswLabel];
    }
    
    return  self;

}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    __weak typeof(self) weakSelf=self;
    
    
    

    [_headLabel mas_makeConstraints:^(MASConstraintMaker *make) {
          make.height.equalTo(@35);
          make.top.equalTo(weakSelf.mas_top).offset(14);
          make.left.equalTo(weakSelf.mas_left).offset(15);
       }];
    
    [_telLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.mas_left).offset(15);
        make.top.equalTo(weakSelf.headLabel.mas_bottom).offset(10);
        make.size.mas_equalTo(CGSizeMake(90, 44));
    }];
    
    [_pswLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.mas_left).offset(15);
        make.top.equalTo(weakSelf.usrNamerTF.mas_bottom).offset(8);
        make.size.mas_equalTo(CGSizeMake(90, 44));
    }];
    
       [_usrNamerTF mas_makeConstraints:^(MASConstraintMaker *make) {
           make.left.equalTo(weakSelf.telLabel.mas_right);
           make.right.equalTo(weakSelf.mas_right).offset(-15);
           make.height.equalTo(@44);
           make.top.equalTo(weakSelf.headLabel.mas_bottom).offset(10);
       }];
       
       [_pswTF mas_makeConstraints:^(MASConstraintMaker *make) {
           make.left.equalTo(weakSelf.pswLabel.mas_right);
           make.right.equalTo(weakSelf.mas_right).offset(-15);
           make.height.equalTo(@44);
           make.top.equalTo(weakSelf.usrNamerTF.mas_bottom).offset(8);
       }];
       
       [_nextStepBtn mas_makeConstraints:^(MASConstraintMaker *make) {
           make.left.equalTo(weakSelf.mas_left).offset(16);
           make.right.equalTo(weakSelf.mas_right).offset(-16);
           make.height.equalTo(@35);
           make.top.equalTo(_pswTF.mas_bottom).offset(30);
       }];
       
       [_goLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
           make.size.mas_equalTo(CGSizeMake(100, 16));
           make.right.equalTo(weakSelf.mas_right).offset(-15);
           make.top.equalTo(weakSelf.nextStepBtn.mas_bottom).offset(23);
       }];
}
    
- (UILabel *)headLabel{
    if(!_headLabel){
        _headLabel=[[UILabel alloc] init];
        _headLabel.text=@"Please Enter the Phone Number and Password to Register:";
        _headLabel.font=[UIFont systemFontOfSize:14.0];
        _headLabel.textColor=RGB(81, 81, 81);
        
    }
    return _headLabel;
}

-(UILabel *)telLabel{
    if(!_telLabel){
        _telLabel=[[UILabel alloc] init];
        _telLabel.text=@"Username";
        _telLabel.textColor=RGB(81, 81, 81);
        _telLabel.font=[UIFont systemFontOfSize:18.0];
        _telLabel.textAlignment=NSTextAlignmentCenter;
    }
    return _telLabel;
}

-(UILabel *)pswLabel{
    if(!_pswLabel){
        _pswLabel=[[UILabel alloc] init];
        _pswLabel.text=@"Password";
        _pswLabel.textColor=RGB(81, 81, 81);
        _pswLabel.font=[UIFont systemFontOfSize:18.0];
        _pswLabel.textAlignment=NSTextAlignmentCenter;
    }
    return _pswLabel;
}

- (UITextField *)usrNamerTF{
    if(!_usrNamerTF){
        _usrNamerTF=[[UITextField alloc] init];
        _usrNamerTF.delegate=self;

        _usrNamerTF.backgroundColor=mainColor;
        _usrNamerTF.placeholder=@"Please Enter Your Phone Number";  //placeholder
         [_usrNamerTF addTarget:self action:@selector(usrNameTfChangeText:) forControlEvents:(UIControlEventEditingChanged)];
        
    }
    return  _usrNamerTF;
    
        }

-(UITextField *)pswTF{
    if(!_pswTF){
    _pswTF=[[UITextField alloc]init];
    _pswTF.delegate=self;
    _pswTF.backgroundColor=mainColor;

    _pswTF.placeholder=@"Please Enter Your Password";
    _pswTF.secureTextEntry=YES;
    [_pswTF addTarget:self action:@selector(pswTfChangeText:) forControlEvents:(UIControlEventEditingChanged)];
        
    }
    return _pswTF;
    
}

-(UIButton *)nextStepBtn{
    if(!_nextStepBtn){
        _nextStepBtn=[UIButton buttonWithType:(UIButtonTypeCustom)];
        [_nextStepBtn setTitle:@"Next Step" forState:(UIControlStateNormal)];
        _nextStepBtn.backgroundColor = RGB(229, 229, 229);
        _nextStepBtn.userInteractionEnabled = NO;
        [_nextStepBtn setTitleColor:RGB(132,132,132) forState:(UIControlStateNormal)];
        [_nextStepBtn setTitleColor:[UIColor whiteColor] forState:(UIControlStateSelected)];
      //  [_nextStepBtn addTarget:self action: forControlEvents:<#(UIControlEvents)#>]
     //
        
    }
    return _nextStepBtn;
    
}

-(UIButton *)goLoginBtn{
    if(!_goLoginBtn){
        _goLoginBtn=[UIButton buttonWithType:(UIButtonTypeCustom)];
        [_goLoginBtn setTitle:@"Go to Login" forState:(UIControlStateNormal)];
        [_goLoginBtn setTitleColor:RGB(56, 145, 241) forState:(UIControlStateNormal)];
        
       // _goLoginBtn.backgroundColor=mainColor;
        
    }
    return _goLoginBtn;
}


//限制输入条件，按钮的该表


#pragma mark - UITextFieldDelegate
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if(textField==self.usrNamerTF && range.location >10){
        return NO;
    }
    
    return YES;
}

-(void) usrNameTfChangeText:(UITextField *)textfield{
    if(textfield.text.length==11 && _pswTF.text.length>5){
          _nextStepBtn.backgroundColor=RGB(56, 166, 241);
          _nextStepBtn.userInteractionEnabled=YES;
          _nextStepBtn.selected=YES;
      }
      else{
          _nextStepBtn.backgroundColor=RGB(229, 229, 229);
          _nextStepBtn.userInteractionEnabled=NO;
          _nextStepBtn.selected=NO;
          
      }
  
}


-(void) pswTfChangeText:(UITextField *)textfield{
    if(textfield.text.length>5 && _usrNamerTF.text.length==11){
          _nextStepBtn.backgroundColor=RGB(56, 166, 241);
          _nextStepBtn.userInteractionEnabled=YES;
          _nextStepBtn.selected=YES;
      }
      else{
          _nextStepBtn.backgroundColor=RGB(229, 229, 229);
          _nextStepBtn.userInteractionEnabled=NO;
          _nextStepBtn.selected=NO;
          
      }
}


-(void) pushNextStepView{
    
}
    


@end

//
//  YCRegisViewController.m
//  eCommerce
//
//  Created by admin on 2020/7/16.
//  Copyright © 2020 admin. All rights reserved.
//

#import "YCRegisViewController.h"
#import "YCQuickLoginView.h"
#import "YCLoginView.h"
@interface YCRegisViewController ()

@property (nonatomic,strong) YCQuickLoginView *quickView;
@property (nonatomic,strong) YCLoginView *loginView;

@end

@implementation YCRegisViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:self.loginView];

    [self.view addSubview:self.quickView];
    [self layOutSettings];
    // Do any additional setup after loading the view.
}

-(void)layOutSettings{
    __weak typeof (self) weakSelf=self;
    
    
   
    [_loginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@280);
        make.top.equalTo(self.view.mas_top);
        make.left.right.equalTo(self.view);
        
    }];
    
    [_quickView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.loginView.mas_bottom).offset(30);
        make.left.right.equalTo(self.view);
    }];
    

    
    
    
}




-(YCQuickLoginView *)quickView{
    if(!_quickView){
        _quickView=[[YCQuickLoginView alloc] init];
        
}
    return _quickView;
}

-(YCLoginView *)loginView{
    if(!_loginView){
        _loginView=[[YCLoginView alloc]init];
        
    }
    return _loginView;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

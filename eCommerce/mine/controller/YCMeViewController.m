//
//  YCMeViewController.m
//  eCommerce
//
//  Created by admin on 2020/7/14.
//  Copyright © 2020 admin. All rights reserved.
//

#import "YCMeViewController.h"
#import "YCMineMsgTableViewCell.h"
#import "YCMineMsgTableView.h"
#import "YCRegisViewController.h"
#import "YCMineHeadView.h"
//#import <Masonry.h> 在pch中导入 不需要在每个布局中都导入
@interface YCMeViewController ()

//顶部登陆与注册
@property (strong,nonatomic) YCMineHeadView *headView;
@property (strong,nonatomic) YCMineMsgTableView *messageTable;


@end

@implementation YCMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor cyanColor];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.headView];

    [self.view addSubview:self.messageTable];
    [self layOutSetting];
    

    /*
     弱引用性质的替身
     使用__weak性质的self替代self,可以切断block对self的引用.避免循环引用.
     */
    
    


    
}




- (void)layOutSetting{
    __weak typeof (self) weakSelf=self;
    //以下是设置布局
    [_headView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(weakSelf.view); //左右上对齐
        make.height.mas_equalTo(180);
    }];
    

    
    [_messageTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(weakSelf.view);
        make.height.mas_equalTo(176); //注意用mas_equalto
        make.top.equalTo(weakSelf.headView.mas_bottom).offset(40); // 向下为正数
    }];
    
}

-(YCMineHeadView *)headView{
    if(!_headView){
        _headView=[[YCMineHeadView alloc]init];
        __weak typeof (self) weakSelf=self;
        _headView.regisBlock=^(){
            YCRegisViewController *regView=[[YCRegisViewController alloc] init];
            [weakSelf.navigationController pushViewController:regView animated:YES];
        };
    }
    return _headView;
}



- (YCMineMsgTableViewCell *)messageTable{
    if(!_messageTable){
        _messageTable=[[YCMineMsgTableView alloc] initWithFrame:CGRectMake(0, 0, 0, 0) style:(UITableViewStylePlain)];
    }
    return _messageTable;
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

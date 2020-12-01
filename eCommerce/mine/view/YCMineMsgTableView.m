//
//  YCMineMsgTableView.m
//  eCommerce
//
//  Created by admin on 2020/7/15.
//  Copyright © 2020 admin. All rights reserved.
//

#import "YCMineMsgTableView.h"
#import "YCMineMsgTableViewCell.h"

@interface YCMineMsgTableView() <UITableViewDelegate,UITableViewDataSource> //tableviw需要遵守的两个协议
@property (strong,nonatomic) NSArray *imgAndName;




@end

@implementation YCMineMsgTableView

-(instancetype) initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    self=[super initWithFrame:frame style:style];
    if(self){
        self.delegate=self;
        self.dataSource=self;
        self.bounces=NO;
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//未登陆下的cell数
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
    
}
-(NSArray *)imgAndName{
_imgAndName=@[@{@"img":@"我的界面我的收藏图标",@"title":@"Favorite"},
              @{@"img":@"我的界面意见反馈图标",@"title":@"Feedback"},
              @{@"img":@"我的界面关于我们图标",@"title":@"About Us"},
              @{@"img":@"我的界面客服热线图标",@"title":@"Customer Service"},
              @{@"img":@"我的界面我的优惠券图标",@"title":@"Coupon"},
              @{@"img":@"我的界面邀请好友图标",@"title":@"Invite Friends"}];
return _imgAndName;
              
}



//设置tableview的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44.0; // 88/2
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    YCMineMsgTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(!cell){
        cell=[[YCMineMsgTableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"cell"];
   
    }
    cell.cellProperty=self.imgAndName[indexPath.row];
    if(indexPath.row==3){
        UIImageView *nextImage=[cell valueForKey:@"nextImage"];
        nextImage.hidden=YES;
        UILabel *phoneNum=[[UILabel alloc]init];
        phoneNum.textColor=RGB(123, 124, 128);
        phoneNum.text=@"400-123-4567";
        [cell addSubview:phoneNum];
        __weak typeof(cell) weakCell=cell;
        [phoneNum mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(weakCell.mas_right).offset(-10);
            make.centerY.equalTo(weakCell.mas_centerY);
            make.size.mas_equalTo(CGSizeMake(130, 15));
        }];
        
    }
   // cell.textLabel.text=[NSString stringWithFormat:@"%li",indexPath.row];
    return  cell;

    
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    YCLog(@"我选中的是第%li",indexPath.row);
}


@end
